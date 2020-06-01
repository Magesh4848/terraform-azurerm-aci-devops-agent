variable resource_group_name {
  type        = string
  description = "The name of the resource group in which the containerized agents will be deployed"
}

variable location {
  type        = string
  description = "The Azure location to use for deployment"
}

variable enable_vnet_integration {
  type        = bool
  default     = false
  description = "(Optional) A flag that indicates if the containerized agents must be deployed into an existing virtual network"
}

variable vnet_resource_group_name {
  type        = string
  default     = ""
  description = "(Optional) The name of the resource group that contains the virtual network in which the containerized agents will be deployed"
}

variable vnet_name {
  type        = string
  default     = ""
  description = "(Optional) The name of the virtual network in which the containerized agents will be deployed"
}

variable subnet_name {
  type        = string
  default     = ""
  description = "(Optional) The name of the subnet of the vnet in which the containerized agents will be deployed"
}

variable azure_devops_org_name {
  type        = string
  description = "The name of the Azure DevOps organization in which the containerized agents will be deployed (e.g. https://dev.azure.com/YOUR_ORGANIZATION_NAME, must exist)"
}

variable azure_devops_personal_access_token {
  type        = string
  description = "The personal access token to use to connect to Azure DevOps (see https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/v2-windows?view=azure-devops#permissions)"
}

variable linux_agents_configuration {
  type = object({
    count             = number,
    docker_image      = string,
    docker_tag        = string,
    agent_name_prefix = string,
    agent_pool_name   = string
  })
  description = "(Optional) The configuration of the Linux agents to deploy"
  default = {
    count             = 0,
    docker_image      = "",
    docker_tag        = "",
    agent_name_prefix = "",
    agent_pool_name   = ""
  }
}

variable windows_agents_configuration {
  type = object({
    count             = number,
    docker_image      = string,
    docker_tag        = string,
    agent_name_prefix = string,
    agent_pool_name   = string
  })
  description = "(Optional) The configuration of the Windows agents to deploy"
  default = {
    count             = 0,
    docker_image      = "",
    docker_tag        = "",
    agent_name_prefix = "",
    agent_pool_name   = ""
  }
}