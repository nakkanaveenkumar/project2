variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     = "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "jenkins-sg-naveen"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "my-ec2-instance"
}
variable "ami_id" {
  description = "AMI for Linux Ec2 instance"
  default     = "ami-0d13e3e640877b0b9"
}
variable "versioning" {
  type        = bool
  description = "(Optional) A state of versioning."
  default     = true
}
variable "acl" {
  type        = string
  description = " Defaults to private "
  default     = "private"
}
variable "bucket_prefix" {
  type        = string
  description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
  default     = "my-s3bucket-"
}
variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the bucket."
  default = {
    environment = "DEV"
    terraform   = "true"
  }
}