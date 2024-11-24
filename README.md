# hackingweek
repo with some global information about my SUT. 


HOW TO RUN:
First of all, make sure minikube is installed and running(https://minikube.sigs.k8s.io/docs/start/?arch=%2Fwindows%2Fx86-64%2Fstable%2F.exe+download)


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

2. Accessing the Application
Once all the resources are applied and running, you should be able to access your services as follows:

UserService: This service will be exposed on the userservice-service NodePort, as specified in your Kubernetes YAML configuration. You can access it through the IP of the Kubernetes node and the port assigned by Kubernetes (which can be obtained by running kubectl get svc).

Gateway: The gateway should route requests to the user-service based on the path prefixes (/user/**, /match/**, etc.). You can test the routes like this:

http://<node-ip>:<gateway-node-port>/user/...
http://<node-ip>:<gateway-node-port>/match/...
http://<node-ip>:<gateway-node-port>/auth/...
Replace <node-ip> and <gateway-node-port> with the appropriate values. You can find the correct IP and port using kubectl get svc for your services.

Additional Tips:
Ensure kubectl is configured properly: Make sure you have kubectl configured to interact with your Kubernetes cluster. Run kubectl config view to check your current context.

Check logs: If something goes wrong, check the logs of the pods to debug. For example, to check the logs for userservice:
