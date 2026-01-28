pyramid_plot <- plot_ly(
  # keep only Qld data at this stage
  data = filter(pyramid_death_data_recoded, geo_label == "Queensland")
) |>
  add_bars(
    x = ~prop,
    y = ~age_label,
    color = ~sex_label,
    orientation = 'h', # horizontal
    colors = c("#563188", "#BBA4D9"),
    # Modify hover text appearance and content
    # fmt:skip
    text = ~ paste0(sex_label, "\n",
                    "Year: ", time_period, "\n",
                    "Age group (", age_label, "): ",
                    sprintf("%.1f", abs(prop)), "%"),
    textposition = 'none',
    hoverinfo = 'text',
    showlegend = FALSE,
    visible = TRUE
  ) |>
  layout(
    bargap = 0.1,
    barmode = 'overlay',
    yaxis = list(title = list(text = 'Age group', standoff = 10)),
    xaxis = list(
      title = "% of deaths by age and sex",
      tickmode = 'array',
      tickvals = c(-15, -10, -5, 0, 5, 10, 15),
      ticktext = c('15', '10', '5', '0', '5', '10', '15')
    ),
    autosize = T
  )
pyramid_plot
