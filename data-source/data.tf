data "aws_ami" "joindevops" {
    most_recent      = true     # Get the most recent AMI
    owners           = ["973714476881"]
    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_vpc" "default" {      # Fetch the default VPC
  default = true
}

output  "ami_id" {              # Output the AMI ID
  value       = data.aws_ami.joindevops.id
}

output "default_vpc_id" {
    value = data.aws_vpc.default.id
}