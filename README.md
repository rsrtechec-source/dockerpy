# dockerpy

A minimal Python HTTP server that responds with `Hello` at `/` and `ok` at `/healthz`.

## Run locally

```powershell
python R1.py
```

## Build and run with Docker

```powershell
docker build -t dockerpy .
docker run --rm -p 8000:8000 dockerpy
```

## Deploy to Kubernetes

The manifests in `k8s` create a two-replica Deployment, ClusterIP Service, and Ingress for `dockerpy.localhost`. The cluster needs an Ingress controller configured with the `traefik` class.

```powershell
kubectl apply -f k8s\deployment.yaml
kubectl apply -f k8s\service.yaml
kubectl apply -f k8s\ingress.yaml
```
