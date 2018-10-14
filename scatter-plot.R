prototype_scatter_plot <- function(data, var_x, var_y, var_color = "Proportion", save_to = "") {
  if (is.na(as.logical(var_color))) {
    plot <- ggplot(data, aes_string(x = var_x, y = var_y, color = var_color))
  } else {
    plot <- ggplot(data, aes_string(x = var_x, y = var_y))
  }
  plot <- plot + stat_smooth(method = "lm", col = "darkgrey", se = FALSE)
  plot <- plot + scale_color_viridis_c()
  plot <- plot + geom_point()
  if (not_empty(save_to)) png(save_to)
  print(plot)
  if (not_empty(save_to)) dev.off()
}
not_empty <- function(file) {
  return(file != "")
}