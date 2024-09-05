# Pre and Post Conditions
lifecycle {
  precondition {
    condition     = <condition>
    error_message = "<error_message>"
  }
}

# Check Assertion Block
check "<check_assertion_name>" {
  assertion {
    condition     = <condition>
    error_message = "<error_message>"
  }
}

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
