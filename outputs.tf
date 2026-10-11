output "budget_policies_lookup_filter_by" {
  description = "Map of filter_by values across all budget_policies_lookup, keyed the same as var.budget_policies_lookup except keys with no filter_by are omitted"
  value       = { for k, v in data.databricks_budget_policies.budget_policies_lookup : k => v.filter_by if v.filter_by != null && length(v.filter_by) > 0 }
}
output "budget_policies_lookup_page_size" {
  description = "Map of page_size values across all budget_policies_lookup, keyed the same as var.budget_policies_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_budget_policies.budget_policies_lookup : k => v.page_size if v.page_size != null }
}
output "budget_policies_lookup_policies" {
  description = "Map of policies values across all budget_policies_lookup, keyed the same as var.budget_policies_lookup except keys with no policies are omitted"
  value       = { for k, v in data.databricks_budget_policies.budget_policies_lookup : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "budget_policies_lookup_sort_spec" {
  description = "Map of sort_spec values across all budget_policies_lookup, keyed the same as var.budget_policies_lookup except keys with no sort_spec are omitted"
  value       = { for k, v in data.databricks_budget_policies.budget_policies_lookup : k => v.sort_spec if v.sort_spec != null && length(v.sort_spec) > 0 }
}

