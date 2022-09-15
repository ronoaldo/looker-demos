view: ga_sessions {
  derived_table: {
    sql:
      SELECT *, _TABLE_SUFFIX as report_date
      FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
      ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.visitorId ;;
  }

  dimension: visit_number {
    type: number
    sql: ${TABLE}.visitNumber ;;
  }

  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }

  dimension: visit_start_time {
    type: number
    sql: ${TABLE}.visitStartTime ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: totals {
    type: string
    sql: ${TABLE}.totals ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.trafficSource ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: geo_network {
    type: string
    sql: ${TABLE}.geoNetwork ;;
  }

  dimension: custom_dimensions {
    type: string
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: hits {
    type: string
    sql: ${TABLE}.hits ;;
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channelGrouping ;;
  }

  dimension: social_engagement_type {
    type: string
    sql: ${TABLE}.socialEngagementType ;;
  }

  dimension: report_date {
    type: string
    sql: ${TABLE}.report_date ;;
  }

  measure: count {
    type: count
  }

  measure: unique_visitors {
    type: count_distinct
    sql: ${full_visitor_id} ;;
    drill_fields: [detail*]
  }


  set: detail {
    fields: [
      visitor_id,
      visit_number,
      visit_id,
      visit_start_time,
      date,
      totals,
      traffic_source,
      device,
      geo_network,
      custom_dimensions,
      hits,
      full_visitor_id,
      user_id,
      channel_grouping,
      social_engagement_type
    ]
  }
}
