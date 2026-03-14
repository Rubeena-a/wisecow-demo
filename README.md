# Wisecow DevOps Project

## Project Overview

This project demonstrates containerization, Kubernetes deployment, CI/CD automation, monitoring scripts, and runtime security implementation for the Wisecow application.

---

## Problem Statement 1: Containerization and Deployment

### Dockerization
- Created Dockerfile for Wisecow application
- Built Docker image
- Pushed image to DockerHub

## Application Output

### Running Container
```bash
docker ps
```
![Running Container](Outputs/Containers-Created.png)


### Browser Output
![alt text](Outputs/App-Local-Test-4499.png)

### Curl Output
![alt text](Outputs/App-Cmd-Line-Test-Curl.png)

### Docker Images

![alt text](Outputs/Docker-Image-Cmd-Output.png)

### Docker Hub Repsitories
![alt text](Outputs/Docker-Hub-Repo.png)
![alt text](Outputs/DockerHub-Repo-Wisecow-General.png)

### Docker Desktop Images
![alt text](Outputs/Docker-Desktop-Images.png)

### Login to docker hub 
![alt text](Outputs/Docker-Hub-Login-In-Bash.png)

### Docker Push 
![alt text](Outputs/Docker-Push-Bash-Cmd.png)

### Kubernetes Deployment
- Created Deployment YAML
- Exposed application using NodePort Service
- Configured Ingress for domain-based routing

![alt text](Outputs/Minikube-Kubectl-Versions.png)

### Start Minikube

```bash

minikube start
```

### Verify Cluster Is Running

```bash
kubectl get nodes
```
![alt text](Outputs/Kubectl-Get-Nodes-Verify-Cluster-Running.png)


### Apply Deployment 


![alt text](Outputs/Kubectl-Apply-Deployment-Get-Pods.png)


![alt text](Outputs/Kubectl-Logs-Get-Deployments-Pods.png)



# Kubernetes Service

![alt text](Outputs/Kubectl-Apply-Service-Get-Service.png)

### Access  the Application:

![alt text](Outputs/Access-Service-Minikube-Service-Wisecow-Service.png)

### Verify

![alt text](Outputs/Verifying-Kubernetes-Service-Get-Svc.png)


![alt text](Outputs/K8s-Service-Reachable-through-Browser-With-IP.png)


# Kubernetes Ingress 

![alt text](Outputs/Enable-Ingress-On-Minikube-Addon.png)

### Verify Ingress Controller


![alt text](Outputs/Verify-Ingress-Controller-Get-Pods.png)




### Apply

![alt text](Outputs/Kubectl-Ingress-Apply-Get-Ingress.png)


### CI/CD Pipeline
- Implemented CI/CD using GitHub Actions
- Automatically builds and pushes Docker image on code changes

---

## Problem Statement 2: Monitoring and Automation

### System Health Monitoring Script
Monitors:
- CPU usage
- Memory usage
- Disk usage

### Application Health Checker
Checks:
- Application availability
- HTTP status response

---

## Problem Statement 3: Runtime Security

### KubeArmor Implementation
- Installed KubeArmor
- Applied Zero Trust Security Policy
- Detected security violations inside container

---

## Screenshots

### Kubernetes Deployment
(screenshot here)

### CI/CD Pipeline
(screenshot here)

### Monitoring Script Output
(screenshot here)

### KubeArmor Security Logs
(screenshot here)

---

## Technologies Used

- Docker
- Kubernetes
- GitHub Actions
- Bash scripting
- Python
- KubeArmor



