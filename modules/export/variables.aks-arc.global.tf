
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
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC3xmYzLD1mHmp0uGdLMgQbfLWVzjPaYqoCADRaIA0432Jh3XT6DMStgWVDhPK05lhgE7tMuFgW4aJ7VH1qgFw6tII9ho8+SojmxAQ74vv56oiy7artEudxzi3IvRpLolvpSIVd4DzSi5eqAGOpdZhYtV+SMjD+PP4WfxUGu+NdMUyVPh+iLheIwGFx5VFqUc3jPGb1c2vDxNOuNOAAofzvBaerdeBwzmqdsQMRhFzq2EYiLzBNDdMd8dE1tFTkls4+OUqImRRxEgDETWicOHU35og950zTXfzZZTEKQNuWyQZKdazEEIkm6mZ2O5m2MwTQFGDzBnK0nz5U2DMpt4SDrz767NuA7aAwu6at4RqnE8HscJYEMSRSDNwZkxqijDGUVHP4N+EPaubZTbwIdECa1kJycHciKPvCFseuYIlOYCxLvbYwHwBhV1TYhA9oCFiwJEhHzfG9tHkCOZsy/BvpNJg36kpafprTkzAhA3C9YVPSwjQiR3kJSctqHkeKDBN711WVSbmYOI7ukalfxf+xC0Cm1OwtgW/viX6CzzW4LxsxOouK7lUglRBLdDXFXMYWRQRiGFsGUw95Rm0LSPouzCzSWUmfBjYLsw3npIK3ucIp2yJQpg9fsd4CkO10crNBVbie4K/8NOifylEwtjoq40N2LfxeDbGXLWFQWov7XQ==\n"
}
