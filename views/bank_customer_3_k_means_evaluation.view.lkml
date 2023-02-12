# The name of this view in Looker is "Bank Customer 3 K Means Evaluation"
view: bank_customer_3_k_means_evaluation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `customer_segmentation.bank_customer_3_k_means_evaluation`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Davies Bouldin Index" in Explore.

  dimension: davies_bouldin_index {
    type: number
    sql: ${TABLE}.davies_bouldin_index ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_davies_bouldin_index {
    type: sum
    sql: ${davies_bouldin_index} ;;
  }

  measure: average_davies_bouldin_index {
    type: average
    sql: ${davies_bouldin_index} ;;
  }

  dimension: init_method {
    type: string
    sql: ${TABLE}.init_method ;;
  }

  dimension: k {
    type: number
    sql: ${TABLE}.k ;;
  }

  dimension: loss {
    type: string
    sql: ${TABLE}.loss ;;
  }

  dimension: mean_squared_distance {
    type: number
    sql: ${TABLE}.mean_squared_distance ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }

  measure: count {
    type: count
    drill_fields: [model_name]
  }
}
