output "aks_kube_config" {
  value       = module.aks.kube_config_raw
  description = "AKS kubeconfig"
  sensitive = true
}

output "aks_clustername" {
  value       = module.aks.aks_name
  description = "AKS cluster name"
}