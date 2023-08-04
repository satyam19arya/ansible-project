variable "REGION" {
  default = "us-east-1"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "AMI" {
  default = "ami-053b0d53c279acc90"
}

variable "KEY_NAME" {
  default = "ansible"
}

variable "SECURITY_GROUP_ID" {
  default = "sg-0874efefdd8e1ec25"
}

variable "instance_names" {
  type    = list(string)
  default = ["ansible server1", "ansible server2"]
}