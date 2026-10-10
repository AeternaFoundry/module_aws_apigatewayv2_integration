resource "aws_apigatewayv2_integration" "apigatewayv2_integrations" {
  for_each = var.apigatewayv2_integrations

  api_id                        = each.value.api_id
  integration_type              = each.value.integration_type
  request_templates             = each.value.request_templates
  request_parameters            = each.value.request_parameters
  region                        = each.value.region
  payload_format_version        = each.value.payload_format_version
  passthrough_behavior          = each.value.passthrough_behavior
  integration_uri               = each.value.integration_uri
  integration_subtype           = each.value.integration_subtype
  integration_method            = each.value.integration_method
  description                   = each.value.description
  credentials_arn               = each.value.credentials_arn
  content_handling_strategy     = each.value.content_handling_strategy
  connection_type               = each.value.connection_type
  connection_id                 = each.value.connection_id
  template_selection_expression = each.value.template_selection_expression
  timeout_milliseconds          = each.value.timeout_milliseconds

  dynamic "response_parameters" {
    for_each = each.value.response_parameters != null ? each.value.response_parameters : []
    content {
      mappings    = response_parameters.value.mappings
      status_code = response_parameters.value.status_code
    }
  }

  dynamic "tls_config" {
    for_each = each.value.tls_config != null ? [each.value.tls_config] : []
    content {
      server_name_to_verify = tls_config.value.server_name_to_verify
    }
  }
}

