resource "aws_instance" "this" {
  for_each = var.instances # terraform will give us a variable called each
  ami                    = "ami-09c813fb71547fc4f" # This is our devops-practice AMI ID
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = each.value  #to get the value from the map variable
  tags = {
    Name    = each.key #to get the key from the map variable
    Purpose = "terraform-practice"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

output "ec2_info" {
  value = aws_instance.this
}


/*
{  
  "frontend"={ .......
  }
  "backend"={ .......
  }
  "database"={ .......
  }
}
*/
