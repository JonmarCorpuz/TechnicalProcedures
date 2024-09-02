variable "<variable_id>" {
  type        = <variable_type>
  default     = <default_value>
  description = "<description>"

  validation {
    condition     = var.<variable_id> == "<value>" [|| var.<variable_id> == "<value>"] || contains(["<value1>", "<value2>, ...], var.<variable_id>)
    error_message = "<error_message>"
  }
}
