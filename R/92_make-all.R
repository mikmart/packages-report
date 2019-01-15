library(tidyverse)

all_scripts <- fs::dir_ls(here::here("R"))

analysis_scripts <- all_scripts %>%
  discard(~ startsWith(fs::path_file(.x), "9"))

walk(analysis_scripts, callr::rscript)
