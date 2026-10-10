variable "apigatewayv2_integrations" {
  description = <<EOT
Map of apigatewayv2_integrations, attributes below
Required:
    - api_id
    - integration_type
Optional:
    - connection_id
    - connection_type
    - content_handling_strategy
    - credentials_arn
    - description
    - integration_method
    - integration_subtype
    - integration_uri
    - passthrough_behavior
    - payload_format_version
    - region
    - request_parameters
    - request_templates
    - template_selection_expression
    - timeout_milliseconds
    - response_parameters (block):
        - mappings (required)
        - status_code (required)
    - tls_config (block):
        - server_name_to_verify (optional)
EOT

  type = map(object({
    api_id                        = string
    integration_type              = string
    request_templates             = optional(map(string))
    request_parameters            = optional(map(string))
    region                        = optional(string)
    payload_format_version        = optional(string)
    passthrough_behavior          = optional(string)
    integration_uri               = optional(string)
    integration_subtype           = optional(string)
    integration_method            = optional(string)
    description                   = optional(string)
    credentials_arn               = optional(string)
    content_handling_strategy     = optional(string)
    connection_type               = optional(string)
    connection_id                 = optional(string)
    template_selection_expression = optional(string)
    timeout_milliseconds          = optional(number)
    response_parameters = optional(list(object({
      mappings    = map(string)
      status_code = string
    })))
    tls_config = optional(object({
      server_name_to_verify = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_integrations : (
        v.integration_subtype == null || (length(v.integration_subtype) >= 1 && length(v.integration_subtype) <= 128)
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_integrations : (
        v.payload_format_version == null || (contains(["1.0", "2.0"], v.payload_format_version))
      )
    ])
    error_message = "must be one of: 1.0, 2.0"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

