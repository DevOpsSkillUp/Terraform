module "ec2" {
    source = "../../terraform_aws_ec2_main_template"
    sg_id = "sg-0b604ff2fc83b1d01" #"sg-0e978039cdb6c3057"
    instance_type = "t3.small"
}

output "public_ip" {
   value =  module.ec2.public_ip
}