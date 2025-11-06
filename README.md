# FormaTest

In this task I used victoria-metrics-k8s-stack helm chart to set up VictoriaMetrics + Grafana
There also is ArgoCD to 


### my-app helm chart
Deploys application which spams metrics and VMServiceScrape to
monitor this app.


### victoria-metris-stack helm chart
Deploys VM stack + Grafana to monitor cluster


To deploy infrastructure you firstly need to install and set up minikube
Use this command to run minikube
```angular2html
minikube start --driver=docker
```

To deploy infrastructure use command:
```angular2html
bash setup.sh
```
Wait till all resources deploy, run this commands to check if services are ready:
```angular2html
kubectl get applications -n argocd
kubectl get deploy -n monitoring
kubectl get pods -n monitoring
kubectl get svc -n monitoring
```

When all charts deploy, you can access Grafana using this command:
```angular2html
minikube service -n monitoring my-monitoring-stack-grafana
```
Username: admin
Password: neoadmin

You can see many cluster dashboards, but there is our app dashboard: `Histogram Heatmap (ordered_histogram)`

If you change values.yaml of our charts, ArgoCD will deploy changes

To cleanup use command:
```angular2html
minikube delete
```


