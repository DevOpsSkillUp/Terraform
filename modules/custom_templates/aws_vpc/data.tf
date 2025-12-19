data "aws_availability_zones" "available" {
  # to get the available AZs in the region
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "main" {   #data source default vpc route table
  vpc_id = local.default_vpc_id
  filter {
    name = "association.main"  # which is the ROUTE TABLE associated with the MAIN COLUMN NAME
    values = ["true"]
  }
}