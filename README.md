AWS Setup:
    
    create iam user 
    install aws cli v2 
    aws configure 
Terraform Commands:

    terraform init 
    terraform plan
    terraform apply [or] terraform apply -auto-approve 
    terraform destroy [or] terraform destroy -auto-approve
Reconfigure:
    
    terraform init -reconfigure
Workspaces:

    terraform workspace prod [or] stage [or] dev
    terraform workspace select dev

Terraform Commands
| Command                           | Purpose                                                                           |
| --------------------------------- | -------------------------------------------------------------------------         |
| `terraform init`                  | Initializes the working directory and backend configuration.                      |
| `terraform plan`                  | Previews the changes that will be made to the infrastructure.                     |
| `terraform apply`                 | Applies the changes to your infrastructure.                                       |
| `terraform apply -auto-approve`   | Applies the changes without prompting for user approval.                          |
| `terraform destroy`               | Destroys all the resources defined in the configuration.                          |
| `terraform destroy -auto-approve` | Destroys resources without requiring user confirmation.                           |
| `terraform output`                | Displays output values defined in the Terraform configuration.                    |
| `terraform validate`              | Validates the syntax and internal consistency of the configuration files.         |
| `terraform fmt`                   | Formats the configuration files to a standardized style.                          |
| `terraform state`                 | Manages Terraform's state file (e.g., list resources, remove from state).         |
| `terraform taint`                 | Marks a resource for destruction and recreation.                                  |
| `terraform untaint`               | Removes the "tainted" state from a resource.                                      |
| `terraform import`                | Imports existing resources into Terraform.                                        |
| `terraform refresh`               | Updates the state file to match the current infrastructure.                       |
| `terraform providers`             | Lists the providers required by the configuration.                                |
| `terraform graph`                 | Generates a visual graph of the resources and their relationships.                |
| `terraform init -reconfigure`     | Reinitializes the working directory and backend, reconfiguring the backend setup. |
| `terraform workspace prod`        | Creates or switches to the prod/dev/stage workspace.                              |
| `terraform workspace select dev`  | Selects the dev workspace if it's already created.                                |

