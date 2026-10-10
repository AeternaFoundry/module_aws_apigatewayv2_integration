output "apigatewayv2_integrations_id" {
  description = "Map of id values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigatewayv2_integrations_api_id" {
  description = "Map of api_id values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "apigatewayv2_integrations_connection_id" {
  description = "Map of connection_id values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.connection_id if v.connection_id != null && length(v.connection_id) > 0 }
}
output "apigatewayv2_integrations_connection_type" {
  description = "Map of connection_type values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.connection_type if v.connection_type != null && length(v.connection_type) > 0 }
}
output "apigatewayv2_integrations_content_handling_strategy" {
  description = "Map of content_handling_strategy values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.content_handling_strategy if v.content_handling_strategy != null && length(v.content_handling_strategy) > 0 }
}
output "apigatewayv2_integrations_credentials_arn" {
  description = "Map of credentials_arn values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.credentials_arn if v.credentials_arn != null && length(v.credentials_arn) > 0 }
}
output "apigatewayv2_integrations_description" {
  description = "Map of description values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigatewayv2_integrations_integration_method" {
  description = "Map of integration_method values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.integration_method if v.integration_method != null && length(v.integration_method) > 0 }
}
output "apigatewayv2_integrations_integration_response_selection_expression" {
  description = "Map of integration_response_selection_expression values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.integration_response_selection_expression if v.integration_response_selection_expression != null && length(v.integration_response_selection_expression) > 0 }
}
output "apigatewayv2_integrations_integration_subtype" {
  description = "Map of integration_subtype values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.integration_subtype if v.integration_subtype != null && length(v.integration_subtype) > 0 }
}
output "apigatewayv2_integrations_integration_type" {
  description = "Map of integration_type values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.integration_type if v.integration_type != null && length(v.integration_type) > 0 }
}
output "apigatewayv2_integrations_integration_uri" {
  description = "Map of integration_uri values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.integration_uri if v.integration_uri != null && length(v.integration_uri) > 0 }
}
output "apigatewayv2_integrations_passthrough_behavior" {
  description = "Map of passthrough_behavior values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.passthrough_behavior if v.passthrough_behavior != null && length(v.passthrough_behavior) > 0 }
}
output "apigatewayv2_integrations_payload_format_version" {
  description = "Map of payload_format_version values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.payload_format_version if v.payload_format_version != null && length(v.payload_format_version) > 0 }
}
output "apigatewayv2_integrations_region" {
  description = "Map of region values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "apigatewayv2_integrations_request_parameters" {
  description = "Map of request_parameters values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.request_parameters if v.request_parameters != null && length(v.request_parameters) > 0 }
}
output "apigatewayv2_integrations_request_templates" {
  description = "Map of request_templates values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.request_templates if v.request_templates != null && length(v.request_templates) > 0 }
}
output "apigatewayv2_integrations_response_parameters" {
  description = "Map of response_parameters values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.response_parameters if v.response_parameters != null && length(v.response_parameters) > 0 }
}
output "apigatewayv2_integrations_template_selection_expression" {
  description = "Map of template_selection_expression values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.template_selection_expression if v.template_selection_expression != null && length(v.template_selection_expression) > 0 }
}
output "apigatewayv2_integrations_timeout_milliseconds" {
  description = "Map of timeout_milliseconds values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => v.timeout_milliseconds if v.timeout_milliseconds != null }
}
output "apigatewayv2_integrations_tls_config" {
  description = "Map of tls_config values across all apigatewayv2_integrations, keyed the same as var.apigatewayv2_integrations"
  value       = { for k, v in aws_apigatewayv2_integration.apigatewayv2_integrations : k => one(v.tls_config) if v.tls_config != null && length(v.tls_config) > 0 }
}

