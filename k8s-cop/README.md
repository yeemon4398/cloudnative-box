# Deploy the sample applications

## Deploy the bookinfo sample application
```
cd ../../sample-files/bookinfo-app/
kubectl create ns bookinfo-app      # Can set your preferred namespace name
kubectl apply -f bookinfo.yaml -n bookinfo-app
```

## Deploy the single-container-pod sample application
```
cd ../../sample-files/single-container-pod/

# Deploy the application
kubectl apply -f sg-location.yaml
kubectl apply -f jp-location.yaml

# Clean up the application
kubectl delete -f sg-location.yaml
kubectl delete -f jp-location.yaml
```

## Deploy the multi-container-pod sample application
```
cd ../../sample-files/multi-containers-pod/

# Deploy the application
kubectl apply -f multi-location.yaml

# Clean up the application
kubectl delete -f multi-location.yaml
```
