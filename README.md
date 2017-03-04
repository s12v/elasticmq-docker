# Docker image for ElasticMQ

Docker image for [ElasticMQ](https://github.com/adamw/elasticmq) (fake SQS)

Run it with
```
docker run -p 9324:9324 s12v/elasticmq
```

Custom config `elasticmq.conf` can be mounted to `/etc/elasticmq/`:
```
docker run -p 9324:9324 -v "$PWD:/etc/elasticmq" s12v/elasticmq
```

# Kubernetes

Run this with [Minikube](https://github.com/kubernetes/minikubei):

```
kubectl create -f kube-elasticmq.yaml 
```

It exposes the service in the cluster at `http://elasticmq:9324`.

It also exposes a `NodePort` at `30932` in case you want to connect
from outside of the cluster.

