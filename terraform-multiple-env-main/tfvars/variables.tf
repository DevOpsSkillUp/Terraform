variable "project"{
    default = "expense"
}
variable "environment" {
    
}
variable "instances" {
    default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
    default = "Z081947938RQ58D6DH7W7"
}

variable "domain_name" {
    default = "daws82s.online"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Terraform = "true"
    }
}

variable "profile" {
    
}