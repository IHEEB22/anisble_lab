### initialize
 
    terraform init

### preview terraform actions

    terraform plan

### apply configuration with variables

    terraform apply -var-file terraform.tfvars

### destroy a single resource

    terraform destroy -target resource.name

### destroy everything from tf files

    terraform destroy

### show resources and components from current state

    terraform state list
      
### save kubeconfig file localy  
    
    terraform output aks_kube_config > ~/.kube/aks-config

### remove first and last line from the aks.yml file (remove EOF>> and  EOT) 
    
    sed -i '1d;$d' ~/.kube/aks-config

### make the kubeconfig file available for the k8s module 

    export K8S_AUTH_KUBECONFIG=~/.kube/aks-config

### install all requirements for the k8s ansible module 

    pip install -r requirements.txt

### run the ansible playbook 

    ansible-playbook aks-playbook.yml

### make the kubeconfig file available for the kubectl cli 

    export KUBECONFIG=~/.kube/aks-config

### list pods created by ansible playbook using kubectl 

    kubectl get pods -n nginx-ns


    

