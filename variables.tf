# Resource Name Variable declarations
variable "resource_name" {
  description = "Name of a cloud resource"
  type        = string

  validation {
    condition     = length(var.resource_name) != 0
    error_message = "Resource's name required"
  }
}

# Declare allowed values for Shared Category Tag value
variable "shared_category_allowed_values" {
  description = "Allowed value list for Shared Category tag"
  type        = list(string)
  default     = ["TTB", "CDFI", "CUSTOM", "SHARED"]
}

# Shared Category Tag Variable declarations
variable "shared_category_tag" {
  description = "Shared Category tag value for cloud resouces"
  type        = string

  validation {
    condition     = contains(["TTB", "CDFI", "CUSTOM", "SHARED"], var.shared_category_tag)
    error_message = "Invalid value for Shared Category Tag"
  }
}
