- dashboard: cluster_analysis_customer_segmentation_dashboard
  title: "[Cluster Analysis] Customer Segmentation Dashboard"
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: qyQAsU7nHdK0aJk9ZWTyTO
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/20" > Elbow </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; float: left; line-height: 40px; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; font-weight: bold; background-color: #eaf1fe;" href="#"> Cluster Analysis </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards-next/someid2" > Training Evaluation </a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "[Cluster Analysis] # of Customers Per Cluster"
    title: "[Cluster Analysis] # of Customers Per Cluster"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_bar
    fields: [predict_result_2.centroid_id, predict_result_2.count]
    sorts: [predict_result_2.count desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Num of Customers, orientation: bottom, series: [{axisId: predict_result_2.count,
            id: predict_result_2.count, name: Predict Result 2}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: false
    hide_legend: false
    series_types: {}
    label_color: ["#2618A9"]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: "# of Customers Per Cluster"
    title_hidden: true
    listen: {}
    row: 4
    col: 0
    width: 12
    height: 7
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Number of Customer by Cluster","color":"hsl(0,
      0%, 0%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 2
    col: 0
    width: 7
    height: 2
  - name: "[Cluster Analysis] Clustered by Housing"
    title: "[Cluster Analysis] Clustered by Housing"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_column
    fields: [predict_result_2.centroid_id, predict_result_2.count_housing, predict_result_2.housing]
    pivots: [predict_result_2.housing]
    sorts: [predict_result_2.housing, predict_result_2.count_housing desc 0]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: test, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: test,
        args: [predict_result_2.housing, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: test, filter: ''}], !!null ''], _kind_hint: dimension, _type_hint: string},
      {category: dimension, description: '', label: test1, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: test1,
        args: [predict_result_2.centroid_id, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: test1, filter: ''}], !!null ''], _kind_hint: dimension, _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Num of Housing, orientation: left, series: [{axisId: predict_result_2.count_housing,
            id: free - predict_result_2.count_housing, name: free}, {axisId: predict_result_2.count_housing,
            id: own - predict_result_2.count_housing, name: own}, {axisId: predict_result_2.count_housing,
            id: rent - predict_result_2.count_housing, name: rent}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      own - predict_result_2.count_housing: "#DB4437"
      rent - predict_result_2.count_housing: "#F4B400"
      free - predict_result_2.count_housing: "#4285F4"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Clustered by Housing
    title_hidden: true
    listen: {}
    row: 4
    col: 12
    width: 12
    height: 7
  - name: "[Cluster Analysis] Count of Purpose"
    title: "[Cluster Analysis] Count of Purpose"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_column
    fields: [predict_result_2.centroid_id, predict_result_2.purpose, predict_result_2.count_purpose]
    pivots: [predict_result_2.purpose]
    sorts: [predict_result_2.purpose, predict_result_2.centroid_id]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: "# of Purpose", orientation: left, series: [{axisId: predict_result_2.count_purpose,
            id: business - predict_result_2.count_purpose, name: business}, {axisId: predict_result_2.count_purpose,
            id: car - predict_result_2.count_purpose, name: car}, {axisId: predict_result_2.count_purpose,
            id: domestic appliances - predict_result_2.count_purpose, name: domestic
              appliances}, {axisId: predict_result_2.count_purpose, id: education
              - predict_result_2.count_purpose, name: education}, {axisId: predict_result_2.count_purpose,
            id: furniture/equipment - predict_result_2.count_purpose, name: furniture/equipment},
          {axisId: predict_result_2.count_purpose, id: radio/TV - predict_result_2.count_purpose,
            name: radio/TV}, {axisId: predict_result_2.count_purpose, id: repairs
              - predict_result_2.count_purpose, name: repairs}, {axisId: predict_result_2.count_purpose,
            id: vacation/others - predict_result_2.count_purpose, name: vacation/others}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      car - predict_result_2.count_purpose: "#DB4437"
      business - predict_result_2.count_purpose: "#4285F4"
      radio/TV - predict_result_2.count_purpose: "#FF8168"
      domestic appliances - predict_result_2.count_purpose: "#F4B400"
      education - predict_result_2.count_purpose: "#0F9D58"
      furniture/equipment - predict_result_2.count_purpose: "#12B5CB"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Purpose of Opening Account
    title_hidden: true
    listen: {}
    row: 11
    col: 0
    width: 24
    height: 9
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Age & Sex Distribution","color":"hsl(0,
      100%, 50%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 20
    col: 7
    width: 10
    height: 1
  - name: "[Cluster Analysis] Distribution of Age"
    title: "[Cluster Analysis] Distribution of Age"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_bar
    fields: [predict_result_2.centroid_id, average_of_age]
    sorts: [predict_result_2.centroid_id]
    limit: 500
    dynamic_fields: [{measure: average_of_age, based_on: predict_result_2.age, expression: '',
        label: Average of Age, type: average, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Avg Age, orientation: bottom, series: [{axisId: average_of_age,
            id: average_of_age, name: Average of Age}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Distribution of Age
    title_hidden: true
    listen: {}
    row: 21
    col: 0
    width: 12
    height: 7
  - name: "[Cluster Analysis] Distribution of Sex"
    title: "[Cluster Analysis] Distribution of Sex"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_column
    fields: [predict_result_2.centroid_id, predict_result_2.sex, predict_result_2.count_sex]
    pivots: [predict_result_2.sex]
    sorts: [predict_result_2.sex, predict_result_2.centroid_id]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: "# of Sex", orientation: left, series: [{axisId: predict_result_2.count_sex,
            id: female - predict_result_2.count_sex, name: female}, {axisId: predict_result_2.count_sex,
            id: male - predict_result_2.count_sex, name: male}], showLabels: true,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      female - predict_result_2.count_sex: "#4285F4"
      male - predict_result_2.count_sex: "#DB4437"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Distribution of Sex
    title_hidden: true
    listen: {}
    row: 21
    col: 12
    width: 12
    height: 7
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":" Fin-Account Distribution","color":"hsl(0,
      100%, 50%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 28
    col: 7
    width: 10
    height: 1
  - name: "[Cluster Analysis] Clustered by Saving Account"
    title: "[Cluster Analysis] Clustered by Saving Account"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_column
    fields: [predict_result_2.centroid_id, predict_result_2.count_saving_accounts,
      predict_result_2.saving_accounts]
    pivots: [predict_result_2.saving_accounts]
    filters:
      predict_result_2.saving_accounts: "-%NA%"
    sorts: [predict_result_2.saving_accounts, predict_result_2.centroid_id]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: "# of Saving Account", orientation: left, series: [{axisId: predict_result_2.count_saving_accounts,
            id: little - predict_result_2.count_saving_accounts, name: little}, {
            axisId: predict_result_2.count_saving_accounts, id: moderate - predict_result_2.count_saving_accounts,
            name: moderate}, {axisId: predict_result_2.count_saving_accounts, id: NA
              - predict_result_2.count_saving_accounts, name: NA}, {axisId: predict_result_2.count_saving_accounts,
            id: quite rich - predict_result_2.count_saving_accounts, name: quite rich},
          {axisId: predict_result_2.count_saving_accounts, id: rich - predict_result_2.count_saving_accounts,
            name: rich}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      little - predict_result_2.count_saving_accounts: "#4285F4"
      moderate - predict_result_2.count_saving_accounts: "#DB4437"
      quite rich - predict_result_2.count_saving_accounts: "#F4B400"
      rich - predict_result_2.count_saving_accounts: "#0F9D58"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Distribution of Saving Account
    title_hidden: true
    listen: {}
    row: 29
    col: 0
    width: 12
    height: 7
  - name: "[Cluster Analysis] Checking Account"
    title: "[Cluster Analysis] Checking Account"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_column
    fields: [predict_result_2.centroid_id, predict_result_2.count_checking_account,
      predict_result_2.checking_account]
    pivots: [predict_result_2.checking_account]
    filters:
      predict_result_2.checking_account: "-%NA%"
    sorts: [predict_result_2.checking_account, predict_result_2.centroid_id]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Checking Account, orientation: left, series: [{axisId: predict_result_2.count_checking_account,
            id: little - predict_result_2.count_checking_account, name: little}, {
            axisId: predict_result_2.count_checking_account, id: moderate - predict_result_2.count_checking_account,
            name: moderate}, {axisId: predict_result_2.count_checking_account, id: NA
              - predict_result_2.count_checking_account, name: NA}, {axisId: predict_result_2.count_checking_account,
            id: rich - predict_result_2.count_checking_account, name: rich}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      little - predict_result_2.count_checking_account: "#4285F4"
      moderate - predict_result_2.count_checking_account: "#DB4437"
      rich - predict_result_2.count_checking_account: "#F4B400"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Distribution of Checking Account
    title_hidden: true
    listen: {}
    row: 29
    col: 12
    width: 12
    height: 7
  - name: "[Cluster Analysis] Account Duration"
    title: "[Cluster Analysis] Account Duration"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_bar
    fields: [predict_result_2.centroid_id, average_of_duration]
    pivots: [predict_result_2.centroid_id]
    sorts: [predict_result_2.centroid_id]
    limit: 500
    dynamic_fields: [{measure: average_of_duration, based_on: predict_result_2.duration,
        expression: '', label: Average of Duration, type: average, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Account Duration, orientation: left, series: [{axisId: average_of_duration,
            id: 1 - average_of_duration, name: '1'}, {axisId: average_of_duration,
            id: 2 - average_of_duration, name: '2'}, {axisId: average_of_duration,
            id: 3 - average_of_duration, name: '3'}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_types: {}
    series_colors:
      1 - average_of_duration: "#4285F4"
      2 - average_of_duration: "#DB4437"
      3 - average_of_duration: "#F4B400"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Distribution of Account Duration
    title_hidden: true
    listen: {}
    row: 36
    col: 0
    width: 12
    height: 6
  - name: "[Cluster Analysis] Credit Amount"
    title: "[Cluster Analysis] Credit Amount"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: looker_bar
    fields: [predict_result_2.centroid_id, average_of_credit_amount]
    pivots: [predict_result_2.centroid_id]
    sorts: [predict_result_2.centroid_id]
    limit: 500
    dynamic_fields: [{measure: average_of_credit_amount, based_on: predict_result_2.credit_amount,
        expression: '', label: Average of Credit Amount, type: average, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Avg. Credit Amount, orientation: bottom, series: [{axisId: average_of_credit_amount,
            id: 1 - average_of_credit_amount, name: '1'}, {axisId: average_of_credit_amount,
            id: 2 - average_of_credit_amount, name: '2'}, {axisId: average_of_credit_amount,
            id: 3 - average_of_credit_amount, name: '3'}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.###
    series_types: {}
    series_colors:
      1 - average_of_credit_amount: "#4285F4"
      2 - average_of_credit_amount: "#DB4437"
      3 - average_of_credit_amount: "#F4B400"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Distribution of Credit Amount
    title_hidden: true
    listen: {}
    row: 36
    col: 12
    width: 12
    height: 6
  - name: "[Cluster Analysis] Highlight properties"
    title: "[Cluster Analysis] Highlight properties"
    model: demo-customer-segmentation
    explore: predict_result_2
    type: marketplace_viz_report_table::report_table-marketplace
    fields: [predict_result_2.centroid_id, average_of_age, average_of_duration]
    sorts: [average_of_age desc 0]
    limit: 500
    dynamic_fields: [{measure: average_of_age, based_on: predict_result_2.age, expression: '',
        label: Average of Age, type: average, _kind_hint: measure, _type_hint: number},
      {measure: average_of_duration, based_on: predict_result_2.duration, expression: '',
        label: Average of Duration, type: average, _kind_hint: measure, _type_hint: number}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      average_of_age: Age
      average_of_duration: Duration
      predict_result_2.centroid_id: Cluster
    show_view_names: false
    theme: traditional
    customTheme: ''
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    label|predict_result_2.centroid_id: Cluster
    heading|predict_result_2.centroid_id: ''
    hide|predict_result_2.centroid_id: false
    subtotalDepth: '1'
    label|average_of_age: Age
    heading|average_of_age: ''
    style|average_of_age: black_red
    reportIn|average_of_age: '1'
    unit|average_of_age: '1'
    comparison|average_of_age: no_variance
    switch|average_of_age: false
    var_num|average_of_age: true
    var_pct|average_of_age: false
    label|average_of_duration: Duration
    heading|average_of_duration: ''
    style|average_of_duration: black_red
    reportIn|average_of_duration: '1'
    unit|average_of_duration: '1'
    comparison|average_of_duration: no_variance
    switch|average_of_duration: false
    var_num|average_of_duration: true
    var_pct|average_of_duration: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      average_of_age:
        is_active: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    truncate_column_names: false
    defaults_version: 0
    series_types: {}
    title_hidden: true
    listen: {}
    row: 43
    col: 5
    width: 14
    height: 3
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Highlight Properties","color":"hsl(0,
      100%, 50%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 42
    col: 7
    width: 10
    height: 1
  - name: 'Cluster #1'
    title: 'Cluster #1'
    model: demo-customer-segmentation
    explore: predict_result_2
    type: single_value
    fields: [predict_result_2.centroid_id, predict_result_2.count]
    sorts: [predict_result_2.centroid_id]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#FFF"
    conditional_formatting: [{type: greater than, value: 200, background_color: "#3EB0D5",
        font_color: "#FFF", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 250,
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_title_predict_result_2.centroid_id: true
    show_comparison_predict_result_2.count: false
    comparison_style_predict_result_2.count: calculate_progress
    comparison_show_label_predict_result_2.count: true
    comparison_label_predict_result_2.count: ''
    comparison_label_placement_predict_result_2.count: below
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    listen: {}
    row: 2
    col: 7
    width: 5
    height: 2
  - name: 'Cluster #2'
    title: 'Cluster #2'
    model: demo-customer-segmentation
    explore: predict_result_2
    type: single_value
    fields: [predict_result_2.centroid_id, predict_result_2.count]
    filters:
      predict_result_2.centroid_id: '2'
    sorts: [predict_result_2.centroid_id]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#FFF"
    conditional_formatting: [{type: greater than, value: 200, background_color: "#3EB0D5",
        font_color: "#fff", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 250,
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_title_predict_result_2.centroid_id: true
    show_comparison_predict_result_2.count: false
    comparison_style_predict_result_2.count: calculate_progress
    comparison_show_label_predict_result_2.count: true
    comparison_label_predict_result_2.count: ''
    comparison_label_placement_predict_result_2.count: below
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    listen: {}
    row: 2
    col: 12
    width: 5
    height: 2
  - name: 'Cluster #3'
    title: 'Cluster #3'
    model: demo-customer-segmentation
    explore: predict_result_2
    type: single_value
    fields: [predict_result_2.centroid_id, predict_result_2.count]
    filters:
      predict_result_2.centroid_id: '3'
    sorts: [predict_result_2.centroid_id]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#FFF"
    conditional_formatting: [{type: greater than, value: 200, background_color: "#3EB0D5",
        font_color: "#fff", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 250,
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_title_predict_result_2.centroid_id: true
    show_comparison_predict_result_2.count: false
    comparison_style_predict_result_2.count: calculate_progress
    comparison_show_label_predict_result_2.count: true
    comparison_label_predict_result_2.count: ''
    comparison_label_placement_predict_result_2.count: below
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    listen: {}
    row: 2
    col: 17
    width: 5
    height: 2
