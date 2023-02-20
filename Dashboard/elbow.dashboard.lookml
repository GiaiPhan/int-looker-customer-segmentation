- dashboard: elbow_customer_segmentation_dashboard
  title: "[Elbow] Customer Segmentation Dashboard"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Lw9y8ynw9n01tMhLm4owTg
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; float: left; line-height: 40px; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; font-weight: bold; background-color: #eaf1fe;" href="#"> Elbow </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/21" > Cluster Analysis </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards-next/someid2" > Training Evaluation </a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Customer Segmentation - K selection","fontSize":"48px","backgroundColor":"rgb(252,
      252, 252)","color":"rgb(0, 0, 0)","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 2
    col: 1
    width: 22
    height: 2
  - name: "[K-Selection K-means++ Cosine] Measured by MSE"
    title: "[K-Selection K-means++ Cosine] Measured by MSE"
    model: demo-customer-segmentation
    explore: bank_customer_3_k_means_evaluation
    type: looker_area
    fields: [bank_customer_3_k_means_evaluation.k, sum_mean_squared_distance]
    sorts: [bank_customer_3_k_means_evaluation.k]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Mean Squared
          Distance, value_format: !!null '', value_format_name: !!null '', based_on: bank_customer_3_k_means_evaluation.mean_squared_distance,
        _kind_hint: measure, measure: sum_mean_squared_distance, type: sum, _type_hint: number,
        filters: {bank_customer_3_k_means_evaluation.loss: COSINE, bank_customer_3_k_means_evaluation.init_method: KMEANS++}}]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Mean Squared Distance, orientation: left, series: [{axisId: sum_mean_squared_distance,
            id: sum_mean_squared_distance, name: Sum Mean Squared Distance}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: K-Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    label_value_format: 0.###
    series_types: {}
    series_colors:
      sum_mean_squared_distance: "#42B4F4"
    reference_lines: [{reference_type: line, line_value: min, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#E52592"}]
    trend_lines: []
    swap_axes: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Measured by Mean Squared Distance
    title_hidden: true
    listen: {}
    row: 6
    col: 1
    width: 11
    height: 6
  - name: "[K-Selection K-means++ Cosine] Measured by DBI"
    title: "[K-Selection K-means++ Cosine] Measured by DBI"
    model: demo-customer-segmentation
    explore: bank_customer_3_k_means_evaluation
    type: looker_area
    fields: [bank_customer_3_k_means_evaluation.k, sum_davies_bouldin_index]
    sorts: [bank_customer_3_k_means_evaluation.k desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Davies
          Bouldin Index, value_format: !!null '', value_format_name: !!null '', based_on: bank_customer_3_k_means_evaluation.davies_bouldin_index,
        _kind_hint: measure, measure: sum_davies_bouldin_index, type: sum, _type_hint: number,
        filters: {bank_customer_3_k_means_evaluation.loss: COSINE, bank_customer_3_k_means_evaluation.init_method: KMEANS++}}]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Davies Bouldin Index, orientation: left, series: [{axisId: sum_davies_bouldin_index,
            id: sum_davies_bouldin_index, name: Sum Davies Bouldin Index}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: K-Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.###
    series_types: {}
    series_colors:
      sum_davies_bouldin_index: "#42B4F4"
    reference_lines: [{reference_type: line, line_value: min, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#E52592"}]
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
    note_text: 'Measured by Davies Bouldin Index

      '
    title_hidden: true
    listen: {}
    row: 6
    col: 12
    width: 11
    height: 6
  - name: "[K-Selection K-means++ Euclidean] Measured by MSE"
    title: "[K-Selection K-means++ Euclidean] Measured by MSE"
    model: demo-customer-segmentation
    explore: bank_customer_3_k_means_evaluation
    type: looker_area
    fields: [bank_customer_3_k_means_evaluation.k, sum_mean_squared_distance]
    sorts: [bank_customer_3_k_means_evaluation.k]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Mean Squared
          Distance, value_format: !!null '', value_format_name: !!null '', based_on: bank_customer_3_k_means_evaluation.mean_squared_distance,
        _kind_hint: measure, measure: sum_mean_squared_distance, type: sum, _type_hint: number,
        filters: {bank_customer_3_k_means_evaluation.loss: EUCLIDEAN, bank_customer_3_k_means_evaluation.init_method: KMEANS++}}]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Mean Squared Distance, orientation: left, series: [{axisId: sum_mean_squared_distance,
            id: sum_mean_squared_distance, name: Sum Mean Squared Distance}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: K-Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.###
    series_types: {}
    series_colors:
      sum_mean_squared_distance: "#42B4F4"
    reference_lines: [{reference_type: line, line_value: min, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#E52592"}]
    swap_axes: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Measured by Mean Squared Distance
    title_hidden: true
    listen: {}
    row: 13
    col: 1
    width: 11
    height: 6
  - name: "[K-Selection K-means++ Euclidean] Measured by DBI"
    title: "[K-Selection K-means++ Euclidean] Measured by DBI"
    model: demo-customer-segmentation
    explore: bank_customer_3_k_means_evaluation
    type: looker_area
    fields: [bank_customer_3_k_means_evaluation.k, sum_davies_bouldin_index]
    sorts: [bank_customer_3_k_means_evaluation.k desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Davies
          Bouldin Index, value_format: !!null '', value_format_name: !!null '', based_on: bank_customer_3_k_means_evaluation.davies_bouldin_index,
        _kind_hint: measure, measure: sum_davies_bouldin_index, type: sum, _type_hint: number,
        filters: {bank_customer_3_k_means_evaluation.loss: EUCLIDEAN, bank_customer_3_k_means_evaluation.init_method: KMEANS++}}]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Davies Bouldin Index, orientation: left, series: [{axisId: sum_davies_bouldin_index,
            id: sum_davies_bouldin_index, name: Sum Davies Bouldin Index}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: K-Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.###
    series_types: {}
    series_colors:
      sum_davies_bouldin_index: "#42B4F4"
    reference_lines: [{reference_type: line, line_value: min, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#E52592"}]
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
    note_text: Measured by Davies Bouldin Index
    title_hidden: true
    listen: {}
    row: 13
    col: 12
    width: 11
    height: 6
  - name: "[K-Selection Random Consine] Measured by MSE"
    title: "[K-Selection Random Consine] Measured by MSE"
    model: demo-customer-segmentation
    explore: bank_customer_3_k_means_evaluation
    type: looker_area
    fields: [bank_customer_3_k_means_evaluation.k, sum_mean_squared_distance]
    sorts: [bank_customer_3_k_means_evaluation.k]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Mean Squared
          Distance, value_format: !!null '', value_format_name: !!null '', based_on: bank_customer_3_k_means_evaluation.mean_squared_distance,
        _kind_hint: measure, measure: sum_mean_squared_distance, type: sum, _type_hint: number,
        filters: {bank_customer_3_k_means_evaluation.loss: COSINE, bank_customer_3_k_means_evaluation.init_method: RANDOM}}]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Mean Squared Distance, orientation: left, series: [{axisId: sum_mean_squared_distance,
            id: sum_mean_squared_distance, name: Sum Mean Squared Distance}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: K-Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.###
    series_types: {}
    series_colors:
      sum_mean_squared_distance: "#DB4537"
    reference_lines: [{reference_type: line, line_value: min, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#1A73E8"}]
    swap_axes: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Measured by MSE
    title_hidden: true
    listen: {}
    row: 21
    col: 1
    width: 11
    height: 6
  - name: "[K-Selection Random Cosine] Measured by DBI"
    title: "[K-Selection Random Cosine] Measured by DBI"
    model: demo-customer-segmentation
    explore: bank_customer_3_k_means_evaluation
    type: looker_area
    fields: [bank_customer_3_k_means_evaluation.k, sum_davies_bouldin_index]
    sorts: [bank_customer_3_k_means_evaluation.k desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Davies
          Bouldin Index, value_format: !!null '', value_format_name: !!null '', based_on: bank_customer_3_k_means_evaluation.davies_bouldin_index,
        _kind_hint: measure, measure: sum_davies_bouldin_index, type: sum, _type_hint: number,
        filters: {bank_customer_3_k_means_evaluation.loss: COSINE, bank_customer_3_k_means_evaluation.init_method: RANDOM}}]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Davies Bouldin Index, orientation: left, series: [{axisId: sum_davies_bouldin_index,
            id: sum_davies_bouldin_index, name: Sum Davies Bouldin Index}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: K-Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.###
    series_types: {}
    series_colors:
      sum_davies_bouldin_index: "#DB4537"
    reference_lines: [{reference_type: line, line_value: min, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#1A73E8"}]
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
    note_text: Measured by DBI
    title_hidden: true
    listen: {}
    row: 21
    col: 12
    width: 11
    height: 6
  - name: "[K-Selection Random Euclidean] Measured by MSE"
    title: "[K-Selection Random Euclidean] Measured by MSE"
    model: demo-customer-segmentation
    explore: bank_customer_3_k_means_evaluation
    type: looker_area
    fields: [bank_customer_3_k_means_evaluation.k, sum_mean_squared_distance]
    sorts: [bank_customer_3_k_means_evaluation.k]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Mean Squared
          Distance, value_format: !!null '', value_format_name: !!null '', based_on: bank_customer_3_k_means_evaluation.mean_squared_distance,
        _kind_hint: measure, measure: sum_mean_squared_distance, type: sum, _type_hint: number,
        filters: {bank_customer_3_k_means_evaluation.loss: EUCLIDEAN, bank_customer_3_k_means_evaluation.init_method: RANDOM}}]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Mean Squared Distance, orientation: left, series: [{axisId: sum_mean_squared_distance,
            id: sum_mean_squared_distance, name: Sum Mean Squared Distance}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: K-Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.###
    series_types: {}
    series_colors:
      sum_mean_squared_distance: "#DB4537"
    reference_lines: [{reference_type: line, line_value: min, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#1A73E8"}]
    swap_axes: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Measured by MSE
    title_hidden: true
    listen: {}
    row: 28
    col: 1
    width: 11
    height: 6
  - name: "[K-Selection Random Euclidean] Measured by DBI"
    title: "[K-Selection Random Euclidean] Measured by DBI"
    model: demo-customer-segmentation
    explore: bank_customer_3_k_means_evaluation
    type: looker_area
    fields: [bank_customer_3_k_means_evaluation.k, sum_davies_bouldin_index]
    sorts: [bank_customer_3_k_means_evaluation.k desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Davies
          Bouldin Index, value_format: !!null '', value_format_name: !!null '', based_on: bank_customer_3_k_means_evaluation.davies_bouldin_index,
        _kind_hint: measure, measure: sum_davies_bouldin_index, type: sum, _type_hint: number,
        filters: {bank_customer_3_k_means_evaluation.loss: EUCLIDEAN, bank_customer_3_k_means_evaluation.init_method: RANDOM}}]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Davies Bouldin Index, orientation: left, series: [{axisId: sum_davies_bouldin_index,
            id: sum_davies_bouldin_index, name: Sum Davies Bouldin Index}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: K-Cluster
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.###
    series_types: {}
    series_colors:
      sum_davies_bouldin_index: "#DB4537"
    reference_lines: [{reference_type: line, line_value: min, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#1A73E8"}]
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
    note_text: Measured by DBI
    title_hidden: true
    listen: {}
    row: 28
    col: 12
    width: 11
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Method K-Means ++","color":"hsl(0,
      100%, 50%)","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 4
    col: 8
    width: 8
    height: 1
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Loss:
      Consine","fontSize":"14px","backgroundColor":"rgb(252, 252, 252)","color":"rgb(0,
      0, 0)","bold":true}],"align":"center","id":1676185830458}],"id":1676185961503}],"id":1676185961502}]'
    rich_content_json: '{"format":"slate"}'
    row: 5
    col: 1
    width: 12
    height: 1
  - name: " (Copy 4)"
    type: text
    title_text: " (Copy 4)"
    subtitle_text: ''
    body_text: '[{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Loss:
      Euclidean","fontSize":"14px","backgroundColor":"rgb(252, 252, 252)","color":"rgb(0,
      0, 0)","bold":true}],"align":"center","id":1676185830458}],"id":1676185907949}],"id":1676185907948}]'
    rich_content_json: '{"format":"slate"}'
    row: 12
    col: 1
    width: 12
    height: 1
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    subtitle_text: ''
    body_text: '[{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Loss:
      Consine","fontSize":"14px","backgroundColor":"rgb(252, 252, 252)","color":"rgb(0,
      0, 0)","bold":true}],"align":"center","id":1676185830458}],"id":1676185961503}],"id":1676185961502}]'
    rich_content_json: '{"format":"slate"}'
    row: 20
    col: 1
    width: 12
    height: 1
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Method Random","color":"hsl(0,
      100%, 50%)","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 19
    col: 8
    width: 8
    height: 1
  - name: " (Copy 5)"
    type: text
    title_text: " (Copy 5)"
    subtitle_text: ''
    body_text: '[{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Loss:
      Euclidean","fontSize":"14px","backgroundColor":"rgb(252, 252, 252)","color":"rgb(0,
      0, 0)","bold":true}],"align":"center","id":1676185830458}],"id":1676185907949}],"id":1676185907948}]'
    rich_content_json: '{"format":"slate"}'
    row: 27
    col: 1
    width: 12
    height: 1
