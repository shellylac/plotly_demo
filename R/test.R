p_scatter <- p_scatter |>
  plotly::config(
    displaylogo = FALSE,
    modeBarButtonsToRemove = c(
      "sendDataToCloud",
      "toggleSpikelines",
      "zoom2d",
      "pan2d",
      "select2d",
      "lasso2d"
    )
  )
p_scatter
