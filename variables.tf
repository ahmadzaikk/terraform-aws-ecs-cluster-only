variable "name" {
  description = "name, to be used as prefix for all resource names"
  type        = string
}
variable "tags" {
  default     = {}
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}
