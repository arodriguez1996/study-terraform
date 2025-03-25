# Starting with terraform wuhuuuu

## Terraform

It's an agnostic IaC, Built to work with multiple providers such as AWS, GCP, Azure and more.

Its principle is ummutability. This means that terraform doesn't modify the resources it executes; it only destroys and recreates the resources with the modifications.

## Basic commands

### `terraform init`

This command downloads the Terraform resources and dependencies from all existing providers in the project

### `terraform plan`

Displays wich resources will be created, modified or destroyed. If an existing resource is modified, Terraform will evaluate whether it needs to be recreated.

This command doesn't execute anything; it just displays the process guide in the console

### `terraform apply`

This command generates a `plan` and executes it if the user accepts it. All resources are generated or destroyed

### `terraform destroy`

Destroy all resources generated by Terraform
