
import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg"
  to = module.base.azurerm_resource_group.rg
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.AzureStackHCI/clusters/iac222-cl?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.cluster
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.AzureStackHCI/clusters/iac222-cl/deploymentSettings/default?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.validatedeploymentsetting_seperate[0]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Storage/storageAccounts/iac222wit94"
  to = module.base.module.hci0.azurerm_storage_account.witness
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.KeyVault/vaults/iac222-kv-94"
  to = module.base.module.hci0.azurerm_key_vault.DeploymentKeyVault
}

import {
  id = "94,10,99"
  to = module.base.module.hci0.random_integer.random_suffix
}

import {
  id = "https://iac222-kv-94.vault.azure.net/secrets/AzureStackLCMUserCredential/246efb08a9074411bd6d11fb4e3053c3"
  to = module.base.module.hci0.azurerm_key_vault_secret.AzureStackLCMUserCredential
}

import {
  id = "https://iac222-kv-94.vault.azure.net/secrets/LocalAdminCredential/54d7600afb244e5a932c707457f1a0ed"
  to = module.base.module.hci0.azurerm_key_vault_secret.LocalAdminCredential
}

import {
  id = "https://iac222-kv-94.vault.azure.net/secrets/DefaultARBApplication/4a55800355a64f959cad15e4779c00f6"
  to = module.base.module.hci0.azurerm_key_vault_secret.DefaultARBApplication
}

import {
  id = "https://iac222-kv-94.vault.azure.net/secrets/WitnessStorageKey/17174a3257274329af25d1ec5c0d4256"
  to = module.base.module.hci0.azurerm_key_vault_secret.WitnessStorageKey
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/fc343ed6-3e01-2a9a-3c8f-66485631433e"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/a15060c0-20d9-6d96-810f-5bb78eb0e326"
  to = module.base.module.hci0.azurerm_role_assignment.ServicePrincipalRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/bf7ce61c-665c-3f21-eacb-056883253c6b"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/a1a69e8a-f69f-4562-fff8-439e51df01ef"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/e859b51d-7586-b670-99b5-8413c3e86398"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/c53d2a4e-5ab0-6b3a-cae3-1a2b68e21ffb"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/07a3bede-e454-f366-343d-2aca63798661"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/73929e1e-34e3-7343-7362-5da08c6abe6d"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Authorization/roleAssignments/ef16a05f-42ee-648e-abd2-b1322c9d64aa"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.HybridCompute/machines/AzSHOST1/providers/Microsoft.Insights/dataCollectionRuleAssociations/DCRA_740b3e18fbd215305d1e1d76eabd57b8"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule_association.association["AzSHOST1"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.HybridCompute/machines/AzSHOST2/providers/Microsoft.Insights/dataCollectionRuleAssociations/DCRA_435fea4d3f670d92ba3b8ccab696b8e9"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule_association.association["AzSHOST2"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Insights/dataCollectionRules/AzureStackHCI-iac222-dcr"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule.dcr
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Insights/dataCollectionEndpoints/iac222-dce"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_endpoint.dce
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.OperationalInsights/workspaces/iac222-workspace"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_log_analytics_workspace.workspace
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.AzureStackHCI/clusters/iac222-cl/ArcSettings/default/Extensions/AzureMonitorWindowsAgent?api-version=2023-08-01"
  to = module.base.module.hci0-extensions.module.insights[0].azapi_resource.monitor_agent
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.AzureStackHCI/clusters/iac222-cl/ArcSettings/default/Extensions/AzureEdgeAlerts?api-version=2023-08-01"
  to = module.base.module.hci0-extensions.azapi_resource.alerts[0]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.AzureStackHCI/logicalNetworks/iac222-logicalnetwork?api-version=2023-09-01-preview"
  to = module.base.module.hci0-logical-network0.azapi_resource.logicalNetwork
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Kubernetes/connectedClusters/iac222-aksArc?api-version=2024-01-01"
  to = module.base.module.hci0-aksarc0.azapi_resource.connectedCluster
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac222-rg/providers/Microsoft.Kubernetes/connectedClusters/iac222-aksArc/providers/Microsoft.HybridContainerService/provisionedClusterInstances/default"
  to = module.base.module.hci0-aksarc0.azapi_resource.provisionedClusterInstance
}
