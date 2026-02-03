## Plotly R Tutorial

This repository contains a hands‑on Plotly for R tutorial demo'ed in the Qld Health data science monthly community hang out teams session. 

The primary tutorial is `R/plotly_demo.RMD` — an R Markdown tutorial that demonstrates creating interactive charts (scatter, line, bar, box, histogram, heatmap, 3D, subplots, animations, buttons, and pyramid plots) with plotly and htmlwidgets.

This markdown file is to be "walked-through" in the live demo (not rendered/knitted).

### What is covered 
 - Learn plotly’s object model and common chart types
 - Understand plot_ly → add_trace → layout workflow
 - Code to build basic scatter, line, bar, box, histogram, heatmap, and 3D plots
 - Quick demo of subplots, dropdowns, show/hide controls
 - Case-study of building frame-based animations
 - Exporting interactive figures to standalone HTML
 

### Prerequisites
 - R >= 4.0
 - Basic familiarity with tidyverse-style data frames
 - The tutorial uses the following packages:
 ```
 # R
 install.packages(c("plotly", "dplyr", "readr", "here", "htmlwidgets", "rmarkdown", "knitr"))
 ```
  

### Data inputs
 - Can be found in `R/input`
 
### Further reading

- Plotly R docs: https://plotly.com/r/
- Plotly R book: https://plotly-r.com/
