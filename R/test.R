mort_animation_plot <-
        plot_ly(data = mort_data_recoded) |>
          add_trace(
          x = ~prop,
          y = ~age_label,
          frame = ~time_period,
          color = ~sex_label,
          type = 'bar',
          orientation = 'h',
          colors = c("#563188", "#BBA4D9"),
          text = ~hovertext_col,
          textposition = 'none',
          hoverinfo = 'text',
          showlegend = FALSE,
          visible = TRUE,
          x = 'x1',
          y = 'y1'
        )

mort_animation_plot <- mort_animation_plot |>
  layout(
      bargap = 0.1,
      barmode = 'overlay',
      yaxis = list(title = list(text = 'Age group',
                                standoff = 10),
                   range = c(-0.5,
                             length(levels(mort_data_recoded$age_label)) - 0.5)
                   ),
      xaxis = list(
        range = c(min(mort_data_recoded$prop) - 1,
                  max(mort_data_recoded$prop) + 1),
        title = "% of total population"
        , tickmode = 'array'
        , tickvals = c(-15, -10, -5, 0, 5, 10, 15)
        , ticktext = c('15', '10', '5', '0', '5', '10', '15')
        , autosize = TRUE
        , showgrid = FALSE
      )
  ) |>
 plotly::animation_opts(frame = 180, easing = "linear", redraw = FALSE) |>
 plotly::animation_slider(currentvalue = list(prefix = "YEAR: ", font = list(color = "black")), visible = TRUE) |>
 plotly::animation_button(font = list(family = "Arial Black", size = 16),
                                   bordercolor = "#563188", 
                                   borderwidth = 1.5
                                   )
mort_animation_plot