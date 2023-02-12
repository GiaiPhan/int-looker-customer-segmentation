# The name of this view in Looker is "Predict Result 2"
view: predict_result_2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `customer_segmentation.PREDICT_RESULT_2`
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

  dimension: centroid_id {
    type: number
    sql: ${TABLE}.CENTROID_ID ;;
  }

  dimension: checking_account {
    type: string
    sql: ${TABLE}.Checking_account ;;
  }

  measure: count_checking_account {
    type: number
    sql: COUNT(${checking_account}) ;;
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

  measure: count_duration {
    type: number
    sql: COUNT(${duration}) ;;
  }

  dimension: housing {
    type: string
    sql: ${TABLE}.Housing ;;
  }

  measure: count_housing {
    type: number
    sql: COUNT(${housing}) ;;
  }

  dimension: job {
    type: number
    sql: ${TABLE}.Job ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: nearest_centroids_distance {
    hidden: yes
    sql: ${TABLE}.NEAREST_CENTROIDS_DISTANCE ;;
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}.Purpose ;;
  }

  measure: count_purpose {
    type: number
    sql: COUNT(${purpose}) ;;
  }

  dimension: saving_accounts {
    type: string
    sql: ${TABLE}.Saving_accounts ;;
  }

  measure: count_saving_accounts {
    type: number
    sql: COUNT(${saving_accounts}) ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.Sex ;;
  }

  measure: count_sex {
    type: number
    sql: COUNT(${sex}) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "Predict Result 2 Nearest Centroids Distance"
view: predict_result_2__nearest_centroids_distance {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Centroid ID" in Explore.

  dimension: centroid_id {
    type: number
    sql: CENTROID_ID ;;
  }

  dimension: distance {
    type: number
    sql: DISTANCE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_distance {
    type: sum
    sql: ${distance} ;;
  }

  measure: average_distance {
    type: average
    sql: ${distance} ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: predict_result_2__nearest_centroids_distance {
    type: string
    hidden: yes
    sql: predict_result_2__nearest_centroids_distance ;;
  }
}
