# Flask Healthcheck Demo

[![Docker Image](https://img.shields.io/badge/docker--hub-%20-pull?logo=docker&color=2496ED)](https://hub.docker.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub--Actions-%20-blue?logo=githubactions)](https://github.com/)

A small demo Flask application that demonstrates a minimal, health-checkable web service. The app is intentionally simple — it serves a single route and is packaged with Gunicorn for production-like runs. The repository also includes a Dockerfile, Kubernetes manifests, and simple monitoring scripts useful for demos and local testing.

## Table of contents

- Project overview
- Prerequisites
- Run locally (development)
- Run with Docker (recommended)
- Kubernetes deployment (optional)
- Included scripts
- Files of interest
- Troubleshooting
- License & contact

## Project overview

This project contains:

- `app.py` - minimal Flask application exposing `/` that returns a friendly message.
- `Dockerfile` - builds a lightweight container image using Python 3.10-slim and runs the app with Gunicorn on port 8080.
- `requirements.txt` - Python dependencies (Flask, Gunicorn).
- `k8s/` - Kubernetes manifests (namespace, deployment, service, ingress).
- `scripts/` - small utility scripts for system monitoring and uptime checks.

The app is suitable for quick demos, local development, and as a starting point for CI/CD/k8s exercises.

## Prerequisites

- Python 3.10+ (for running locally)
- pip
- Docker (for building/running the container)
- kubectl and a Kubernetes cluster (for k8s deployment)
- Optional: an ingress controller (e.g., nginx-ingress) if you want to use `k8s/ingress.yaml`

## Run locally (development)

1. Create a virtual environment and install dependencies:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

2. Run the Flask development server:

```bash
python app.py
# The app will listen on 0.0.0.0:8080
```

Visit http://localhost:8080 and you should see the app's greeting.

Note: The `app.py` file uses Flask's built-in server which is fine for development. For production, the Dockerfile uses Gunicorn.

## Run with Docker (recommended)

Build the image:

```bash
docker build -t <your_dockerhub_username>/flask-healthcheck-demo:latest .
```

Run a container locally:

```bash
docker run --rm -p 8080:8080 <your_dockerhub_username>/flask-healthcheck-demo:latest
```

Open http://localhost:8080 to verify the service.

Tips:

- Replace `<your_dockerhub_username>` with your Docker Hub username if you plan to push the image.
- To run with a different number of Gunicorn workers, override the container command or build a variant.

## Kubernetes deployment

The `k8s/` directory contains simple manifests for deploying the app into the `flask-healthcheck` namespace. You can apply them to a cluster with `kubectl`.

1. Create namespace (if not already present):

```bash
kubectl apply -f k8s/namespace.yaml
```

2. Update the `image` in `k8s/deployment.yaml` to your built image (e.g., `<your_dockerhub_username>/flask-healthcheck-demo:latest`).

3. Apply the deployment and service:

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

4. (Optional) If you have an ingress controller and want to use TLS/host routing, apply the ingress manifest:

```bash
kubectl apply -f k8s/ingress.yaml
```

Kubernetes notes:

- The `Deployment` uses 2 replicas and a readiness probe against `/` on port 8080.
- The `Service` exposes the app on port 80 (ClusterIP) and routes to targetPort 8080.
- The `Ingress` example in this repo references host `flask-healthcheck.local` and a TLS secret named `flask-healthcheck-tls` — modify those values to match your environment.

## Included scripts

`/scripts/sys-monitor.sh`
- A Bash script that checks CPU, memory, and disk usage and logs an alert to `/tmp/sys-monitor.log` if thresholds are exceeded.
- Exit code 0 when OK, 2 when an alert is triggered.

`/scripts/uptime_check.py`
- A small Python script that performs an HTTP GET against `http://flask-healthcheck.local/` and measures response time.
- Exits with code 0 when status 200 and response time < 1000 ms; returns 2 otherwise.

These are demo utilities and may need adjustment before use in production systems (e.g., configurable thresholds, logging destinations, error handling, or use of a proper monitoring stack).

## Files of interest

- `app.py` - main Flask app (single route `/`)
- `Dockerfile` - container build (uses Gunicorn)
- `requirements.txt` - Flask and Gunicorn pinned versions
- `k8s/*.yaml` - Kubernetes manifests
- `scripts/*` - monitoring and uptime checks

## Troubleshooting

- If `docker build` fails, ensure you have network access and correct Python base image pulls.
- If the app doesn't respond in Kubernetes:
  - Check pods: `kubectl get pods -n flask-healthcheck`
  - Inspect logs: `kubectl logs <pod> -n flask-healthcheck`
  - Describe pod for events and readiness probe failures: `kubectl describe pod <pod> -n flask-healthcheck`
- For ingress/TLS issues, verify your ingress controller is running and that the TLS secret referenced in `ingress.yaml` exists in the `flask-healthcheck` namespace.

## Suggested next steps

- Add basic health check endpoints (`/healthz`, `/metrics`) and expose Prometheus metrics.
- Add CI pipeline to build and push Docker images and run linters/tests.
- Add automated tests (pytest) and a simple integration test that exercises `/`.

## License & contact

This repository is provided as-is for demonstration. Add a proper license file if you intend to publish or share.

For questions, open an issue or contact the repository owner.

## Author 
Rubeena Shaik
