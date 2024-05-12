resource "aws_security_group" "allow_ssh" {
    name = "allow-ssh"
    description = "allowing ssh access"

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = var.protocol
    cidr_blocks      = var.allowed_cidr
    }

    egress {
    from_port        = 0 # from 0 to 0 means, opening all protocols
    to_port          = 0
    protocol         = "-1" # -1 all protocols
    cidr_blocks      = var.allowed_cidr
    }   



}

# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] == "db" ? "t2.small" : "t2.micro"

    tags = {
        Name = var.instance_names[count.index]
    }
}

