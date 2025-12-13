variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "domain_name" {
    default = "medurubharath.online"
}

variable "zone_id" {
    default = "Z081947938RQ58D6DH7W7"
}