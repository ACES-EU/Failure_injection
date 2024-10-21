# Failure_injection
UPM WP3.1-WP4.2
#In the following, we deployed one benchmark microservice application (online boutique) on Kubernetes and injected failures (CPU, Memory overload, and network delay/loss) in one of the microservices and we generated loads using one of the microservices.

#More indormation is in this link: https://github.com/GoogleCloudPlatform/microservices-demo/blob/main/README.md
#To run the app:
kubectl apply -f ./release/kubernetes-manifests.yaml

#Load generation 
kubectl -n online-boutique scale deployment loadgenerator --replicas 5

#Inject failure at the one of the miscroservices (Example the miscroservice called paymentservice)
#First we need to connect to the container
kubectl exec -it -n online-boutique paymentservice-7ff48697f6-mq77m --sh

#We used mainly two tools for failure injection: stress-ng and iproute2-tc
Results are shown in the folder screenshots.
