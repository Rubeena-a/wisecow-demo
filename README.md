# Cow wisdom web server

Wisecow DevOps Deployment

This project demonstrates containerization and deployment of the Wisecow application using Docker and Kubernetes.

Technologies Used:
- Docker
- Kubernetes
- GitHub Actions
- Bash / Python

Project Features:
- Dockerized Wisecow application
- Kubernetes deployment
- CI/CD pipeline using GitHub Actions
- System monitoring script
- Application health check script

##


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

### Repsitories
![alt text](Outputs/Docker-Hub-Repo.png)
![alt text](Outputs/DockerHub-Repo-Wisecow-General.png)

### Docker Desktop Images
![alt text](Outputs/Docker-Desktop-Images.png)

### Login to docker hub 
![alt text](Outputs/Docker-Hub-Login-In-Bash.png)

### Docker Push 
![alt text](Outputs/Docker-Push-Bash-Cmd.png)

## Kubernetes Deployment

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


![alt text](Outputs/Enable-Ingress-On-Minikube-Addon.png)

### Verify Ingress Controller


![alt text](Outputs/Verify-Ingress-Controller-Get-Pods.png)


# Kubernetes Ingress

### Apply

![alt text](Outputs/Kubectl-Ingress-Apply-Get-Ingress.png)
