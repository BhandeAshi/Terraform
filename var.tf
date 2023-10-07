variable "awsvpc_cidr" {
  type =   string
}

variable "awsvpc_tag" {
  type =   string 
}

variable "subnet1_cidr" {
  type =   list
}

variable "subnet1_az" {
  type =   string
}

variable "subnet1_tag" {
  type =   string

}

variable "subnet2_tag" {
  type =   string
}

variable "subnet2_cidr" {
  type =   string
}

variable "subnet2_az" {
  type =   string
}

variable "table1_tag" {
  type =   string
}

variable "table2_tag" {
  type =   string
}

variable "igw_tag" {
  type =   string
}

variable "ec2_ami" {
  type =   string
}

variable "ec2-type" {
  type =   string
}

variable "ec2-log" {
  type =   string
}