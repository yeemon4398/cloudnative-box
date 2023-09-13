# Deploy the sample helm charts

## Deploy the single-container-pod helm chart
```
cd ~/helm-cop/helm-charts/

# Install the helm chart
helm install location ./single-container-pod/      # location = your preferred release name

# Check installed helm charts
helm list

# Uninstall the helm chart
helm uninstall location
```

