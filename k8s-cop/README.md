# Deploy the sample applications

## Deploy the bookinfo sample application
```
cd ../../sample-files/bookinfo-app/
kubectl create ns bookinfo-app      # Can set your preferred namespace name
kubectl apply -f bookinfo.yaml -n bookinfo-app
```
