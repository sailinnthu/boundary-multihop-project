variable "aws_region" {
  type        = string
  description = "AWS region used for all resources"
  default     = "ap-southeast-1"
}

variable "aws_zone1" {
  type        = string
  description = "AWS zone used for all resources"
  default     = "ap-southeast-1a"
}

variable "aws_zone2" {
  type        = string
  description = "AWS zone used for all resources"
  default     = "ap-southeast-1b"
}

variable "aws_zone3" {
  type        = string
  description = "AWS zone used for all resources"
  default     = "ap-southeast-1c"
}

variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "hc"
}