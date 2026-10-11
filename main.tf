data "databricks_budget_policies" "budget_policies_lookup" {
  for_each = var.budget_policies_lookup

  filter_by = each.value.filter_by
  page_size = each.value.page_size
  sort_spec = each.value.sort_spec
}

