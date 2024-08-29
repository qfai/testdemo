module "base" {
  source              = "../../modules/export"
  siteId              = basename(abspath(path.module))
  location            = "eastus"
  enableProvisioners  = false
  hci0DefaultGateway  = "192.168.1.1"
  hci0StartingAddress = "192.168.1.55"
  hci0EndingAddress   = "192.168.1.65"
  hci0Servers = [
    {
      name        = "AzSHOST1"
      ipv4Address = "192.168.1.12"
    },
    {
      name        = "AzSHOST2"
      ipv4Address = "192.168.1.13"
    },
  ]
  domainServerIP             = "unknown"
  subscriptionId             = var.subscriptionId
  domainAdminUser            = var.domainAdminUser
  domainAdminPassword        = var.domainAdminPassword
  localAdminUser             = var.localAdminUser
  localAdminPassword         = var.localAdminPassword
  deploymentUserPassword     = var.deploymentUserPassword
  servicePrincipalId         = var.servicePrincipalId
  servicePrincipalSecret     = var.servicePrincipalSecret
  rpServicePrincipalObjectId = var.rpServicePrincipalObjectId
  isExported                 = true
  lnet0-startingAddress      = "192.168.1.171"
  lnet0-endingAddress        = "192.168.1.190"
  lnet0-addressPrefix        = "192.168.1.0/24"
  aksArc0-controlPlaneIp     = "192.168.1.190"
}
