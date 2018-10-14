create_plots_iteratively <- function(data, plot_function) {
  vars <- colnames(data)
  vars <- vars[which(vars != "Proportion")]
  for (i in 1:(length(vars) - 1)) {
    for (j in (i + 1):length(vars)) {
      #save_to <- paste(vars[i], "_", vars[j], ".png", sep = "")
      plot_function(data, vars[i], vars[j])
    }
  }
}