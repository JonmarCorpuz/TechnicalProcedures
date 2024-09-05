# Precondition Check
lifecycle {
  precondition {
    condition     = <condition>
    error_message = "<error_message>"
  }
}

# Postcondition Check
lifecycle {
  postcondition {
    condition     = <condition>
    error_message = "<error_message>"
  }
}

# Check Block for Check Assertion
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
