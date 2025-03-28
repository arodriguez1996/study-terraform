# Starting with terraform wuhuuuu

## Terraform

It's an agnostic IaC, Built to work with multiple providers such as AWS, GCP, Azure and more.

Its principle is ummutability. This means that terraform doesn't modify the resources it executes; it only destroys and recreates the resources with the modifications.

Terraform can create resources in parallel, by defult there are 10 resources in parallel and it can be configured

## Syntax

```tf
    resource "local_file" "file" {
        content  = "this is the content"
        filename = "file.txt"
    }

```

## Basic commands

### `terraform init`

This command downloads the Terraform resources and dependencies from all existing providers in the project

Important: for new providers in terraform files, is important to execute `terraform init` for obtain all dependencies from the new provider

### `terraform plan`

Displays wich resources will be created, modified or destroyed. If an existing resource is modified, Terraform will evaluate whether it needs to be recreated.

This command doesn't execute anything; it just displays the process guide in the console

`--out [name].plan`

Saves the output of the plan. Its usefil to ensure that we successfully deploy a plan. This can apply with `terraform apply "[name].plan"`

`--var [name]=[value]`

Set directly a variable value in plan command

`--var-file`

Use tfvars file called by file name

### `terraform apply`

This command generates a `plan` and executes it if the user accepts it. All resources are generated or destroyed

### `terraform destroy`

Destroy all resources generated by Terraform. Is important destroies non-productive resources

### `terraform show`

Display all resources generated by Terraform

### `terraform validate`

Validate the sintax of all terraform files

### `terraform fmt`

Fix all non-indented code, such a lint

## Variables

### tfvars

Set the variable values as an env file, the names should be called `terraform.tfvars` or `terraform.tfvars.json`, we can also use `*.auto.tfvars` or `*.auto.tfvars.json` to have multiple files per provider, resource type, or whatever we want

#### Priority of variables setting

| Order | Definition                            |
|-------|---------------------------------------|
| 1     | Env variable (export TF_VAR_foo="foo")|
| 2     | terraform.tfvars                      |
| 3     | *.auto.tfvars (in alphabetical order) |
| 4     | -var or --var-file (coomand line)     |
