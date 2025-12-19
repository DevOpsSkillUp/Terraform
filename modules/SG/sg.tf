module "mysql_sg" {
    #source = "../custom_templates/aws_sg"
    source = "git::https://github.com/DevOpsSkillUp/Terraform.git//modules/custom_templates/aws_sg?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "Created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}