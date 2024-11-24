# hackingweek
repo with some global information about my SUT. 


HOW TO RUN:
First of all, make sure minikube is installed and running(https://minikube.sigs.k8s.io/docs/start/?arch=%2Fwindows%2Fx86-64%2Fstable%2F.exe+download)

**Starting the app**
In order to run all of these

Apply the JWT Secret:
kubectl apply -f jwt-secret.yaml

Apply the PostgreSQL Secret:
kubectl apply -f postgres-secret.yaml

Apply the PostgreSQL Config:
kubectl apply -f postgres.config.yaml

Apply the PostgreSQL ConfigMap:
kubectl apply -f postgres-configmap.yaml

Deploy PostgreSQL:
kubectl apply -f postgres.yaml

Deploy UserService:
kubectl apply -f userservice.yaml

Deploy the Gateway:
kubectl apply -f gateway.yaml

Check the Status of Your Resources:
kubectl get all

In order to access the gateway from outside the cluster, you may need to port-forward the pod/service. To do so, run the following command: kubectl port-forward {your-pod-instance, something like mongo-75f59d57f4-4nd6q} {port you want to access the app at, for example 8080}

**Accessing the Application**
Once all the resources are applied and running, you should be able to access your services as follows:

All endpoints should be accessible via http://localhost:{whatever port you forwarded to}

Additional Tips:
Ensure kubectl is configured properly: Make sure you have kubectl configured to interact with your Kubernetes cluster. Run kubectl config view to check your current context.

Check logs: If something goes wrong, check the logs of the pods to debug. For example, to check the logs for userservice:
