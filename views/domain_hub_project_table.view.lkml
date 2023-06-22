view: domain_hub_project_table {
  derived_table: {
    sql:
    SELECT
      'YSports' as hub_name,
      'X, Y, and Z use cases' as description,
      'ysports_analytics@yahooinc.com' as owner,
      'yo/ysports_analytics' as resources,
      'github.com/ysports_analytics' as git_url,
      'yahoo1.looker.com' as source_instance
    UNION ALL
    SELECT
      'YFinance' as hub_name,
      'Budget and forecasting use cases' as description,
      'yfinance_analytics@yahooinc.com' as owner,
      'yo/yfinance_analytics' as resources,
      'github.com/yfinance_analytics' as git_url,
      'yahoo1.looker.com' as source_instance
    ;;
  }


  dimension: hub_name {
    label: "Hub Name"
    type: string
  }

  dimension: description {
    label: "Hub Description"
    type: string
  }

  dimension: owner {
    label: "Hub Owner"
    type: string
  }

  dimension: resources {
    label: "Additional Resources"
    type: string
  }

  dimension: git_url {
    label: "GitHub URL"
    type: string
  }

  dimension: source_instance {
    label: "Source Looker Instance"
    type: string
  }
}
