
variable "aksArc0-kubernetesVersion" {
  type        = string
  description = "The version of Kubernetes to use for the provisioned cluster."
  default     = "1.28.5"
}

variable "aksArc0-controlPlaneCount" {
  type        = number
  description = "The number of control plane nodes for the Kubernetes cluster."
  default     = 1
}

variable "aksArc0-controlPlaneVmSize" {
  type        = string
  description = "The size of the Virtual Machines to use for the control plane nodes."
  default     = "Standard_A4_v2"
}

variable "aksArc0-agentPoolProfiles" {
  type = list(object({
    count             = number
    enableAutoScaling = optional(bool)
    nodeTaints        = optional(list(string))
    nodeLabels        = optional(map(string))
    maxPods           = optional(number)
    name              = optional(string)
    osSKU             = optional(string, "CBLMariner")
    osType            = optional(string, "Linux")
    vmSize            = optional(string, "Standard_A4_v2")
  }))
  description = "The agent pool profiles for the Kubernetes cluster."
  default = [{
    count  = 1
    name   = "nodepool1"
    osSKU  = "CBLMariner"
    osType = "Linux"
    vmSize = "Standard_A4_v2"
  }]
}

variable "aksArc0-enableAzureRBAC" {
  type        = bool
  description = "Whether to enable Azure RBAC for the Kubernetes cluster."
  default     = true
}

variable "aksArc0-rbacAdminGroupObjectIds" {
  type        = list(string)
  description = "The object id of the Azure AD group that will be assigned the 'cluster-admin' role in the Kubernetes cluster."
  default     = ["ed888f99-66c1-48fe-992f-030f49ba50ed"]
}

variable "aksArc0-sshPublicKey" {
  type        = string
  description = "The SSH public key that will be used to access the kubernetes cluster nodes. If not specified, a new SSH key pair will be generated."
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDC7F6M7izjacRnCrWiRWhkDH5dmob2sguG5hxdmdxLSmfmfY92ZNYPF6AAHoiEQ2HjwbH7+Ek+CnWz6XDWNI5DGCPX0AduDsc/ymznia+c7Z+tNsn5J8OjKXOftfgzIf1deDNdAelCS+1W2OQYVIgK/57KQrcJ8faup2gXXcVyb7VXKfFZoPwRjxk63kgIXoHoPm5joT7wjTQcAfGsSxb4n0aui0AKehFBfdUH/D1jjzfazlSJivyYMYk2q8xDCYAuZWtL6/8fh+VMe8Mf7STz+ArMb2qJK+1QZ/ELAYzuyPe59IeF11Ts98410IaznAXSIb25KNU0NXiNhx4S7sDEUaHhonrN6kZW+DzMJrIjyn+Af+PjGjwuyRD1oQDP1KB3vgNS7obaXGf4neqGKjOjpFzsjcyQ425QbfHUd+Y6klVdzN9nqE+Z0vpYj++LcYsYTW8u7U1N9FyoyGDwJ5HbdBqyyLY/fetwkR3vPdowC/uXqyL14GHAtfQf0Je+WPKWv5BPzU42H8QzEwbvg8dA3DKTgTYVSVUneTAdKl7T3K3YjzoMHRm/FJYHRya13IxS5pNoVeSLcQmS/e79tGBy2EWcysJVaKqFD3edG2ub9z5zWLa6KuQ8nybLd7fmRQMmr4gXMC9ki2HFgCjNhOuwWxc0Rdq4BRyTEXeqkFvqAw==\n"
}
