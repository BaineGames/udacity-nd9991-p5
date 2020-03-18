#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=noahross/nross-udacity-nd9991-p5:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run  nross-udacity-nd9991-p5 --image=$dockerpath --port=80 --generator=run-pod/v1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward nross-udacity-nd9991-p5 8000:80
