
variable "region" {
  description = "The AWS region where the resources will be provisioned."
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The EC2 instance type for the application server."
  type        = string
  default     = "t2.micro"
}
