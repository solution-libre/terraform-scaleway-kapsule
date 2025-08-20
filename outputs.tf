# Copyright 2020-2023 Particule.io
# Copyright 2025 Solution Libre
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

output "id" {
  value       = scaleway_k8s_cluster.this.id
  description = "The ID of the cluster."
}

output "name" {
  value       = scaleway_k8s_cluster.this.name
  description = "The name of the cluster."
}

output "created_at" {
  value       = scaleway_k8s_cluster.this.created_at
  description = "The creation date of the cluster."
}

output "updated_at" {
  value       = scaleway_k8s_cluster.this.updated_at
  description = "The last update date of the cluster."
}

output "apiserver_url" {
  value       = scaleway_k8s_cluster.this.apiserver_url
  description = "The URL of the Kubernetes API server."
}

output "wildcard_dns" {
  value       = scaleway_k8s_cluster.this.wildcard_dns
  description = "The DNS wildcard that points to all ready nodes."
}

output "kubeconfig" {
  value       = scaleway_k8s_cluster.this.kubeconfig
  description = "The Kubernetes configuration."
  sensitive   = true
}

output "kubeconfig_file" {
  value       = scaleway_k8s_cluster.this.kubeconfig[0].config_file
  description = "The Kubernetes configuration file."
  sensitive   = true
}

output "cluster_ca_cert" {
  value       = scaleway_k8s_cluster.this.kubeconfig[0].cluster_ca_certificate
  description = "PEM based cluster ca certificate."
  sensitive   = true
}

output "token" {
  value       = scaleway_k8s_cluster.this.kubeconfig[0].token
  description = "Token for authenticating to API-Server."
  sensitive   = true
}

output "status" {
  value       = scaleway_k8s_cluster.this.status
  description = "The status of the Kubernetes cluster."
}

output "upgrade_available" {
  value       = scaleway_k8s_cluster.this.upgrade_available
  description = "Set to `true` if a newer Kubernetes version is available."
}

output "node_pools" {
  value = {
    for node_pool in scaleway_k8s_pool.this :
    node_pool.name => node_pool
  }
  description = "Node Pools configuration and status."
}
