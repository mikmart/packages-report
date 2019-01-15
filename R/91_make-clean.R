library(tidyverse)

dirs <- here::here(c("data", "figs"))
files <- map(dirs, fs::dir_ls) %>% flatten_chr()

fs::file_delete(files)
