# Azure Resource Group Module

## Overview

This Terraform module creates an Azure Resource Group that serves as the foundation for deploying Azure infrastructure resources.

## Features

- Creates an Azure Resource Group
- Supports custom Azure regions
- Supports resource tagging
- Reusable across Development, Test, and Production environments

## Resources

| Resource | Type |
|----------|------|
| Azure Resource Group | azurerm_resource_group |

## Inputs

| Name | Type | Description |
|------|------|-------------|
| resource_group_name | string | Name of the Resource Group |
| location | string | Azure region |
| tags | map(string) | Resource tags |

## Outputs

| Name | Description |
|------|-------------|
| resource_group_name | Name of the Resource Group |
| resource_group_id | Resource Group ID |
| location | Azure Region |

## Example Usage

```hcl
module "resource_group" {
  source = "../../modules/resource-group"

  resource_group_name = "rg-enterprise-dev"
  location            = "Central India"

  tags = {
    Environment = "Development"
    Project     = "Enterprise-AKS-Platform"
    Owner       = "Saquib"
  }
}
```

## Best Practices

- Use one Resource Group per environment.
- Apply consistent tags to all Azure resources.
- Reuse this module across all environments.

## Author

Saquib Farash