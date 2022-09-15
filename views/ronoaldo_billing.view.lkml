view: ronoaldo_billing {
  sql_table_name: `ronoaldoconsulting.billing.gcp_billing_export_v1_0090A7_787F24_0856C5` ;;

  measure: count {
    type: count
  }

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: service_id {
    type: string
    sql: ${TABLE}.service.id ;;
  }

  dimension: service_description {
    type: string
    sql: ${TABLE}.service.description ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension_group: usage_start_time {
    type: time
    sql: ${TABLE}.usage_start_time ;;
  }

  dimension_group: usage_end_time {
    type: time
    sql: ${TABLE}.usage_end_time ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: system_labels {
    type: string
    sql: ${TABLE}.system_labels ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension_group: export_time {
    type: time
    sql: ${TABLE}.export_time ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_conversion_rate {
    type: number
    sql: ${TABLE}.currency_conversion_rate ;;
  }

  dimension: usage {
    type: string
    sql: ${TABLE}.usage ;;
  }

  dimension: usage_amount {
    type: string
    sql: ${TABLE}.usage.amount ;;
  }

  dimension: usage_unit {
    type: string
    sql: ${TABLE}.usage.unit ;;
  }

  dimension: usage_pricing_unit {
    type: string
    sql: ${TABLE}.usage.pricing_unit ;;
  }

  dimension: credits {
    type: string
    sql: ${TABLE}.credits ;;
  }

  dimension: invoice {
    type: string
    sql: ${TABLE}.invoice ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}.cost_type ;;
  }

  dimension: adjustment_info {
    type: string
    sql: ${TABLE}.adjustment_info ;;
  }
}
