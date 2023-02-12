# The name of this view in Looker is "Bank Customer 3"
view: bank_customer_3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `customer_segmentation.bank_customer_3`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: checking_account {
    type: string
    sql: ${TABLE}.Checking_account ;;
  }

  dimension: credit_amount {
    type: number
    sql: ${TABLE}.Credit_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_credit_amount {
    type: sum
    sql: ${credit_amount} ;;
  }

  measure: average_credit_amount {
    type: average
    sql: ${credit_amount} ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: housing {
    type: string
    sql: ${TABLE}.Housing ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: job {
    type: number
    sql: ${TABLE}.Job ;;
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}.Purpose ;;
  }

  dimension: saving_accounts {
    type: string
    sql: ${TABLE}.Saving_accounts ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.Sex ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
