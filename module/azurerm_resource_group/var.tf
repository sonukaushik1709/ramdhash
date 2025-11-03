
variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}
# variable "rgs"{}
# variable "name" {
#   type    = string
#   default = "sonu"
# }

# variable "location" {
#   type    = string
#   default = "eastus"
# }
