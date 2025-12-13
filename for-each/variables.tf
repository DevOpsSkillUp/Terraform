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
    default = "Z02863883CNWVZTCCQR60"
}