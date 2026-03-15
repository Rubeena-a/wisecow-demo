
Here is the complete README.md content in Markdown. You can copy-paste this directly into your README.md file in GitHub.
Here is the complete README.md content in Markdown. You can copy-paste this directly into your README.md file in GitHub.

# Wisecow DevOps Project ## Project Overview This project demonstrates a complete DevOps workflow for deploying the Wisecow application using containerization, Kubernetes orchestration, CI/CD automation, runtime security, and monitoring scripts. The objective of this assignment is to showcase practical implementation of DevOps concepts including containerization, Kubernetes deployment, automated pipelines, runtime security policies, and monitoring mechanisms. --- # Tech Stack - Docker - Kubernetes - Minikube - KubeArmor - GitHub Actions - Bash - Python --- # Repository Structure 

wisecow-devops-project │ ├── app │ └── wisecow.sh │ ├── docker │ └── Dockerfile │ ├── kubernetes │ ├── deployment.yaml │ ├── service.yaml │ └── ingress.yaml │ ├── kubearmor │ └── kubearmor-policy.yaml │ ├── scripts │ ├── system_health_monitor.sh │ └── app_health_checker.py │ ├── Outputs │ └── (All screenshots) │ ├── .github/workflows │ └── ci-cd.yml │ └── README.md

--- # Problem Statement 1 – Containerization and Deployment ## Dockerization The Wisecow application was containerized using Docker. Steps performed: 1. Created Dockerfile 2. Built Docker image 3. Tested container locally 4. Pushed image to Docker Hub --- ## Running Container Command used: 

docker ps

Screenshot: ![Running Container](Outputs/Containers-Created.png) --- ## Browser Output ![Browser Output](Outputs/App-Local-Test-4499.png) --- ## Curl Output ![Curl Output](Outputs/App-Cmd-Line-Test-Curl.png) --- ## Docker Images Command: 

docker images

Screenshot: ![Docker Images](Outputs/Docker-Image-Cmd-Output.png) --- ## Docker Hub Repository ![Docker Hub Repo](Outputs/Docker-Hub-Repo.png) ![Docker Hub Repo General](Outputs/DockerHub-Repo-Wisecow-General.png) --- ## Docker Desktop Images ![Docker Desktop Images](Outputs/Docker-Desktop-Images.png) --- ## Docker Login Command: 

docker login

Screenshot: ![Docker Login](Outputs/Docker-Hub-Login-In-Bash.png) --- ## Docker Push Command: 

docker push 

Screenshot: ![Docker Push](Outputs/Docker-Push-Bash-Cmd.png) --- # Kubernetes Deployment The application was deployed to a Kubernetes cluster using **Minikube**. --- ## Verify Kubernetes Installation Commands: 

kubectl version minikube version

Screenshot: ![Versions](Outputs/Minikube-Kubectl-Versions.png) --- ## Start Minikube Command: 

minikube start

--- ## Verify Cluster Command: 

kubectl get nodes

Screenshot: ![Cluster Running](Outputs/Kubectl-Get-Nodes-Verify-Cluster-Running.png) --- ## Apply Deployment Commands: 

kubectl apply -f deployment.yaml kubectl get pods

Screenshot: ![Deployment](Outputs/Kubectl-Apply-Deployment-Get-Pods.png) --- ## Check Logs Command: 

kubectl logs 

Screenshot: ![Logs](Outputs/Kubectl-Logs-Get-Deployments-Pods.png) --- # Kubernetes Service Command: 

kubectl apply -f service.yaml kubectl get svc

Screenshot: ![Service](Outputs/Kubectl-Apply-Service-Get-Service.png) --- ## Access Application Command: 

minikube service wisecow-service

Screenshot: ![Access Service](Outputs/Access-Service-Minikube-Service-Wisecow-Service.png) --- ## Verify Service Command: 

kubectl get svc

Screenshot: ![Verify Service](Outputs/Verifying-Kubernetes-Service-Get-Svc.png) --- ## Browser Access via Service Screenshot: ![Browser Access](Outputs/K8s-Service-Reachable-through-Browser-With-IP.png) --- # Kubernetes Ingress Enable ingress addon: 

minikube addons enable ingress

Screenshot: ![Enable Ingress](Outputs/Enable-Ingress-On-Minikube-Addon.png) --- ## Verify Ingress Controller Command: 

kubectl get pods -n ingress-nginx

Screenshot: ![Ingress Controller](Outputs/Verify-Ingress-Controller-Get-Pods.png) --- ## Apply Ingress Command: 

kubectl apply -f ingress.yaml

Screenshot: ![Ingress Apply](Outputs/Kubectl-Ingress-Apply-Get-Ingress.png) --- # CI/CD Pipeline A CI/CD pipeline was created using **GitHub Actions** to automate: - Build process - Docker image creation - Deployment workflow Pipeline file location: 

.github/workflows/ci-cd.yml

--- # Runtime Security with KubeArmor Runtime security was implemented using **KubeArmor**. Security policies were created to: - Block access to sensitive files such as `/etc/passwd` - Restrict unauthorized shell execution inside containers Policy applied using: 

kubectl apply -f kubearmor-policy.yaml

--- # Problem Statement 2 – Monitoring Scripts ## System Health Monitoring Script File: 

scripts/system_health_monitor.sh

Purpose: - Monitor CPU usage - Monitor memory usage - Monitor disk utilization Run command: 

bash system_health_monitor.sh

Screenshot: ![System Health Script](Outputs/System-Health-Script-Output.png) --- ## Application Health Checker File: 

scripts/app_health_checker.py

Purpose: - Check application availability - Verify HTTP response status Run command: 

python app_health_checker.py

Screenshot: ![App Health Checker](Outputs/App-Health-Checker-Output.png) --- # Conclusion This project demonstrates the implementation of a complete DevOps workflow including: - Docker containerization - Kubernetes deployment - CI/CD automation - Runtime security using KubeArmor - System and application monitoring The Wisecow application was successfully deployed, secured, and monitored following modern DevOps practices. What you need to do now Copy this into README.md Ensure your screenshots are in the Outputs folder Push to GitHub. 

If you want, I can also show you 2 very small README improvements that make your project look much stronger to DevOps interviewers (especially reviewers from AccuKnox).





---

# Wisecow DevOps Project

## Project Overview

This project demonstrates a complete DevOps workflow for deploying the Wisecow application using containerization, Kubernetes orchestration, CI/CD automation, runtime security, and monitoring scripts.

The objective of this assignment is to showcase practical implementation of DevOps concepts including containerization, Kubernetes deployment, automated pipelines, runtime security policies, and monitoring mechanisms.

---

# Tech Stack

- Docker
- Kubernetes
- Minikube
- KubeArmor
- GitHub Actions
- Bash
- Python

---

# Repository Structure

wisecow-devops-project │ ├── app │   └── wisecow.sh │ ├── docker │   └── Dockerfile │ ├── kubernetes │   ├── deployment.yaml │   ├── service.yaml │   └── ingress.yaml │ ├── kubearmor │   └── kubearmor-policy.yaml │ ├── scripts │   ├── system_health_monitor.sh │   └── app_health_checker.py │ ├── Outputs │   └── (All screenshots) │ ├── .github/workflows │   └── ci-cd.yml │ └── README.md

---

# Problem Statement 1 – Containerization and Deployment

## Dockerization

The Wisecow application was containerized using Docker.

Steps performed:

1. Created Dockerfile  
2. Built Docker image  
3. Tested container locally  
4. Pushed image to Docker Hub  

---

## Running Container

Command used:

docker ps

Screenshot:

![Running Container](Outputs/Containers-Created.png)

---

## Browser Output

![Browser Output](Outputs/App-Local-Test-4499.png)

---

## Curl Output

![Curl Output](Outputs/App-Cmd-Line-Test-Curl.png)

---

## Docker Images

Command:

docker images

Screenshot:

![Docker Images](Outputs/Docker-Image-Cmd-Output.png)

---

## Docker Hub Repository

![Docker Hub Repo](Outputs/Docker-Hub-Repo.png)

![Docker Hub Repo General](Outputs/DockerHub-Repo-Wisecow-General.png)

---

## Docker Desktop Images

![Docker Desktop Images](Outputs/Docker-Desktop-Images.png)

---

## Docker Login

Command:

docker login

Screenshot:

![Docker Login](Outputs/Docker-Hub-Login-In-Bash.png)

---

## Docker Push

Command:

docker push <image-name>

Screenshot:

![Docker Push](Outputs/Docker-Push-Bash-Cmd.png)

---

# Kubernetes Deployment

The application was deployed to a Kubernetes cluster using **Minikube**.

---

## Verify Kubernetes Installation

Commands:

kubectl version minikube version

Screenshot:

![Versions](Outputs/Minikube-Kubectl-Versions.png)

---

## Start Minikube

Command:

minikube start

---

## Verify Cluster

Command:

kubectl get nodes

Screenshot:

![Cluster Running](Outputs/Kubectl-Get-Nodes-Verify-Cluster-Running.png)

---

## Apply Deployment

Commands:

kubectl apply -f deployment.yaml kubectl get pods

Screenshot:

![Deployment](Outputs/Kubectl-Apply-Deployment-Get-Pods.png)

---

## Check Logs

Command:

kubectl logs <pod-name>

Screenshot:

![Logs](Outputs/Kubectl-Logs-Get-Deployments-Pods.png)

---

# Kubernetes Service

Command:

kubectl apply -f service.yaml kubectl get svc

Screenshot:

![Service](Outputs/Kubectl-Apply-Service-Get-Service.png)

---

## Access Application

Command:

minikube service wisecow-service

Screenshot:

![Access Service](Outputs/Access-Service-Minikube-Service-Wisecow-Service.png)

---

## Verify Service

Command:

kubectl get svc

Screenshot:

![Verify Service](Outputs/Verifying-Kubernetes-Service-Get-Svc.png)

---

## Browser Access via Service

Screenshot:

![Browser Access](Outputs/K8s-Service-Reachable-through-Browser-With-IP.png)

---

# Kubernetes Ingress

Enable ingress addon:

minikube addons enable ingress

Screenshot:

![Enable Ingress](Outputs/Enable-Ingress-On-Minikube-Addon.png)

---

## Verify Ingress Controller

Command:

kubectl get pods -n ingress-nginx

Screenshot:

![Ingress Controller](Outputs/Verify-Ingress-Controller-Get-Pods.png)

---

## Apply Ingress

Command:

kubectl apply -f ingress.yaml

Screenshot:

![Ingress Apply](Outputs/Kubectl-Ingress-Apply-Get-Ingress.png)

---

# CI/CD Pipeline

A CI/CD pipeline was created using **GitHub Actions** to automate:

- Build process
- Docker image creation
- Deployment workflow

Pipeline file location:

.github/workflows/ci-cd.yml

---

# Runtime Security with KubeArmor

Runtime security was implemented using **KubeArmor**.

Security policies were created to:

- Block access to sensitive files such as `/etc/passwd`
- Restrict unauthorized shell execution inside containers

Policy applied using:

kubectl apply -f kubearmor-policy.yaml

---

# Problem Statement 2 – Monitoring Scripts

## System Health Monitoring Script

File:

scripts/system_health_monitor.sh

Purpose:

- Monitor CPU usage
- Monitor memory usage
- Monitor disk utilization

Run command:

bash system_health_monitor.sh

Screenshot:

![System Health Script](Outputs/System-Health-Script-Output.png)

---

## Application Health Checker

File:

scripts/app_health_checker.py

Purpose:

- Check application availability
- Verify HTTP response status

Run command:

python app_health_checker.py

Screenshot:

![App Health Checker](Outputs/App-Health-Checker-Output.png)

---

# Conclusion

This project demonstrates the implementation of a complete DevOps workflow including:

- Docker containerization
- Kubernetes deployment
- CI/CD automation
- Runtime security using KubeArmor
- System and application monitoring

The Wisecow application was successfully deployed, secured, and monitored following modern DevOps practices.


---

What you need to do now

1. Copy this into README.md


2. Ensure your screenshots are in the Outputs folder


3. Push to GitHub.




---

If you want, I can also show you 2 very small README improvements that make your project look much stronger to DevOps interviewers (especially reviewers from AccuKnox).




---


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


#### When System Is On High CPU Usage

![alt text](Outputs/System-Health-When-System-Is-On-High-CPU-Usage.png)

#### Normal System State

CPU, memory, and disk usage are below the alert threshold.

![alt text](Outputs/Normal-System-State.png)

No alerts → system is healthy.


### Application Health Checker
Checks:
- Application availability
- HTTP status response

![alt text](image.png)

---

## Problem Statement 3: Runtime Security

### KubeArmor Implementation
- Installed KubeArmor
- Applied Zero Trust Security Policy
- Detected security violations inside container


```bash
$ ./karmor.exe version
karmor version 1.4.6 windows/amd64 BuildDate=2025-11-20T08:16:36Z
current version is the latest
```

### Install KubeArmor in the Cluster 

```bash
./karmor.exe install
```
![alt text](Outputs/Karmor-Install.png)

### Kubectl Get Pods
![alt text](Outputs/Kubearmor-Kubectl-Get-Pods.png)

### Confirm Wisecom is Still Running
![alt text](Outputs/Confirm-Wisecom-is-Still-Running.png)

### Apply Security Policy


![alt text](Outputs/Apply-Security-Policy.png)

### Verify Policy
![alt text](Outputs/Kubearmor-Verify-Policy.png)

### Apply Wisecow Block Sensitive File Policy

![alt text](Outputs/Apply-Wisecow-Block-Sensitive-File-Policy-Configured.png)



### Verify Policy Exists and Pod Label

![alt text](Outputs/Verify-Policy-Exists-and-Pod-Label.png)




### Monitoring Karmor Logs
![alt text](Outputs/Monitoring-Karmor-Logs.png)


### Wisecow-BLock-Passwd-Access-Policy-Created

![alt text](Outputs/Wisecow-Block-Passwd-Access-Policy-Created.png)


## Attempt to Access Blocked File

### Policy Created and Policy Details

![alt text](Outputs/Policy-Created-and-Policy-Details.png)




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








