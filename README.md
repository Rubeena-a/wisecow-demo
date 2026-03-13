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
![Running Container](Outputs/image.png)

### Browser Output
![alt text](Outputs/image-1.png)

### Curl Output
![alt text](Outputs/image-2.png)

### Docker Image 

![alt text](Outputs/image-3.png)

### Repsitories
![alt text](Outputs/image-7.png)
![alt text](Outputs/image-8.png)

### Images
![alt text](Outputs/image-5.png)

### Login to docker hub 
![alt text](Outputs/image-4.png)

### Docker Push 
![alt text](Outputs/image-6.png)

## Kubernetes Deployment

![alt text](Outputs/image-9.png)
### Start Minikube

```bash

minikube start
```

### Verify Cluster Is Running

```bash
kubectl get nodes
```
![alt text](Outputs/image-10.png)


### Apply Deployment 


![alt text](Outputs/image-11.png)


![alt text](Outputs/image-13.png)

# Kubernetes Service

![alt text](Outputs/image-12.png)

### Access  the Application:

![alt text](Outputs/image-14.png)

### Verify

![alt text](Outputs/Verifying-Kubernetes-Service.png)


![alt text](Outputs/Application-Reachable-through-Browser.png)


![alt text](image.png)

### Verify Ingress Controller


![alt text](Outputs/Verify-Ingress-Controller.png)


# Kubernetes Ingress

### Apply

![alt text](Outputs/Ingress-Apply.png)
