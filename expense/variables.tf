variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID"
}



# variable "tags" {
#     default = {
#         Project = "Expense"
#         Environment = "Dev"
#         Module = "DB"
#         Name = "DB"
#     }


variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable instance_names {
    type = list
    default = ["db","backend","frontend"]
}


variable "zone_id" {
    default = "Z046395229VDVQAC1HS5I"
}

variable "domain_name" {
    default = "sainathdevops.online"
}
