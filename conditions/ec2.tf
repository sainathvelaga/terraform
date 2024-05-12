# resource <resource-type> <resource-name>
resource "aws_instance" "db" {
    ami = var.image_id
    instance_type = var.instance_name == "DB" ? "t2.small" : "t2.micro"
    
}

