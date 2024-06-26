# PACKAGES ----------------------------------------------------------------------------------

# Make sure the following are installed. This includes packages that are not on CRAN
# and packages that are not loaded below but instead directly references in the code
# (to avoid having to load packages into memory of which we only use a few functions).
list.of.packages <- 
  c(
    "remotes", 
    "knitr", 
    "tidyverse",        # data wrangling and plotting 
    "magrittr",         # pipes, my friend, we need pipes 
    "assertthat",       # robust argument handling for functions 
    "rlang",            # quosures and unquoting
    "ggforce",          # correlation matrices
    "ggnewscale",       # multiple scales
    "ggtext",           # vertical labels via geom_richtext
    "ggh4x",            # constant panel sizes across plots
    "patchwork",        # plotting multiple plots together
    "plotly",           # plotting 3D plots (in SI)
    "ellipse",          # covariance ellipses
    "linguisticsdown",  # IPA symbols
    "Cairo",            # plotting IPA and other special symbols
    "phonR",            # vowel normalization functions
    "phonTools",        # WattFabricius normalization function
    "brms",             # Bayesian mixed-effects multinomials regression
    "cmdstanr", 
    "mgcv",             # GAMMs
    "modelr",           # making data grids for model predictions
    "tidybayes",        # working with posterior draws of Bayesian models
    "MVBeliefUpdatr",   # fitting and using Ideal Observers
    "future",           # parallel processing
    "furrr"             # parallel map fur future
)
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if (length(new.packages)) {
  if ("remotes" %in% new.packages) install.packages("remotes")
  if ("papaja" %in% new.packages) remotes::install_github("crsh/papaja")
  if ("cmdstanr" %in% new.packages) {
    install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
    cmdstanr::install_cmdstan()
  }
  if ("MVBeliefUpdatr" %in% new.packages) remotes::install_github("hlplab/MVBeliefUpdatr")
  if ("supunsup" %in% new.packages) remotes::install_github("kleinschmidt/phonetic-sup-unsup")
  new.packages <- setdiff(new.packages, c("remotes", "papaja", "cmdstanr", "MVBeliefUpdatr", "supunsup"))

  install.packages(new.packages)
}

for (p in list.of.packages) {
  library(p, character.only = T)
}

