variable "budget_policies_lookup" {
  description = <<EOT
Map of budget_policies_lookup, attributes below
Optional:
    - filter_by
    - page_size
    - sort_spec
EOT

  type = map(object({
    filter_by = optional(object({
      creator_user_id   = optional(number)
      creator_user_name = optional(string)
      policy_name       = optional(string)
    }))
    page_size = optional(number)
    sort_spec = optional(object({
      descending = optional(bool)
      field      = optional(string)
    }))
  }))
}

