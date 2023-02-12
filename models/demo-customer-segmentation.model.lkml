# Define the database connection to be used for this model.
connection: "int-demo-data-solution"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: demo-customer-segmentation_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo-customer-segmentation_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Demo-customer-segmentation"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: bank_customer_3_k_means_evaluation {}

explore: bank_customer_3 {}

explore: predict_result_2 {
  join: predict_result_2__nearest_centroids_distance {
    view_label: "Predict Result 2: Nearest Centroids Distance"
    sql: LEFT JOIN UNNEST(${predict_result_2.nearest_centroids_distance}) as predict_result_2__nearest_centroids_distance ;;
    relationship: one_to_many
  }
}
