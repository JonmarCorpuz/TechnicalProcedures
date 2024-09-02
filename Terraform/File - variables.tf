# Regular Variable
variable "<regular_variable_id>" {
  type        = <variable_type>  // Ex: string
  default     = <default_type>   // Ex: "t3.micro"
  description = "<description>" 
  <key>       = <value> 

  validation {
    condition     = var.<variable_id> == "<value>" [|| var.<variable_id> == "<value>"] || contains(["<value1>", "<value2>", ...], var.<variable_id>)
    error_message = "<error_message>"
  }
}

# Object Variable
variable "<object_variable_id"> {
  description = "<description>"

  type = object({
    size  = <size_type>    // Ex: number
    type  = <object_type>  // Ex: string
    <key> = <value> 
  })

  default = {
    size = <default_value>  // Ex: 10
    type = <default_type>   // Ex: gp3
  }
}

# Map Variable
variable "<object_variable_id"> {
  description = "<description>"

  type = map(<map_type>)    // Ex: type = map(string)

  default = {
    size          = <default_value>  // Ex: 10
    type          = <default_type>   // Ex: gp3
    <map_element> = <value>
  }
}

# Map Object Variable
variable "<object_variable_id"> {
  description = "<description>"

  type = map(object({
    size  = <size_type>    // Ex: number
    type  = <object_type>  // Ex: string
    <key> = <value> 
  }))

  default = {
    <key_name> = {
      size = <default_value>  // Ex: 10
      type = <default_type>   // Ex: gp3
    }
  }
}
