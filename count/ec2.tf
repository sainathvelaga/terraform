resource "aws_instance" "db" {

    ami = var.image_id
    instance_type = var.instance_names[count.index] == "db" ? "t2.small" : "t2.micro"
    count = length(var.instance_names)
    tags = {
    Name = var.instance_names[count.index]
    }
}