variable "application_ami_id" {
  description = "The AMI ID to use for the application instance"
}
variable "application_instance_type" {
  description = "The instance type to use for the application instance"
}
variable "application_ssh_key_name" {
  description = "The SSH key name to use for the application instance"
}
variable "application_subnet_id" {
  description = "The Subnet ID to use for the application instance"
}
variable "application_vpc_id" {
  description = "The VPC ID to use for the application instance"
}
variable "bastion_sg" {
  description = "The CIDR block to use for the application instance. Should be in CIDR notation (e.g. 10.20.30.40/32)"
}

# Tag Variables

variable "application_tag_environment" {
  description = "The Environment tag to use for the application instance"
  default     = "dev"
}
variable "application_tag_orchestration" {
  description = "The Orchestration tag to use for the application instance"
  default     = "terraform"
}
