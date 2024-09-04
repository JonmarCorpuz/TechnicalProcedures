# Input Variable Validation
variables "<variable_name>" {
  type        = <data_type>
  description = "<description>"
  default     = "<default_value>"

  // Validation Block
  validation {
    condition     = <condition>
    error_message = "<error_message>"
  }
} 

# Object Validation
