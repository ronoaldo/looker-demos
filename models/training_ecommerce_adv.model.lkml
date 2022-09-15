connection: "bigquery_public_data_looker"

include: "/views/*.view.lkml"

label: "Google Analytics"

explore: ga_sessions {
  label: "Session Data"
  view_label: "Sessions"
}

explore: ronoaldo_billing {
  label: "Billing Data"
  view_label: "Billing Account"
}

explore: appengine_request_logs {
  label: "Request Logs"
  view_label: "AppEngine Requests"

  always_filter: {
    filters: [
      appengine_request_logs.start_time_date: "last 1 year"
    ]
  }
}
