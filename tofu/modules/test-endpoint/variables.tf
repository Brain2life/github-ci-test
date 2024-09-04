# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "endpoint" {
  description = "The endpoint to make an HTTP request to"
  type        = string
}

# variable "healthz_endpoint" {
#   description = "The endpoint to check the health of the Lambda function"
#   type        = string
# }