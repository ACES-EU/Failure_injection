# Failure_injection
UPM WP3.1-WP4.2
#Deploy Online Boutique to the Kubernetes cluster 
#More indormation is in this link: https://github.com/GoogleCloudPlatform/microservices-demo/blob/main/README.md
kubectl apply -f ./release/kubernetes-manifests.yaml

#Load generation 
kubectl -n online-boutique scale deployment loadgenerator --replicas 5

#Inject failure at the one of the miscroservices (Example the miscroservice called paymentservice)
#First we need to connect to the container
kubectl exec -it -n online-boutique paymentservice-7ff48697f6-mq77m --sh
