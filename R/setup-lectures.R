library("here")
library("magrittr")
library("tidyverse")
library("ggplot2")


#  custom ggtheme, based on theme_mgd()
source(here("R/theme_mathcamp.R"))
theme_set(theme_mathcamp()) # set default theme


# suppress version on html output folders
options(htmltools.dir.version = FALSE)

# colors to match the slides and graphics
primary <- "#9b0000"
secondary <- "#0479a8"

# Xaringan settings
library("xaringan")
library("xaringanthemer")
# mono_accent(base_color = primary)
duo_accent(primary_color = primary, 
           secondary_color = secondary, 
           header_font_google = google_font("Vollkorn"), 
           # text_font_google   = google_font("Source Sans Pro"), 
           text_font_google   = google_font("Roboto"), 
           code_font_google   = google_font("Roboto Mono"),
           # code_font_google   = google_font("CamingoCode"),
           # text_bold_color = "#000000",
           # code_inline_color = "#000000",
           code_inline_background_color = "#F5F5F5",
           table_row_even_background_color = "white",
           extra_css = 
             list(".remark-slide-number" = list("display" = "none")))
  

# chunks:
# hide code and messages
# cache everything
knitr::opts_chunk$set(eval = TRUE, echo = FALSE, 
                      warning = FALSE, message = FALSE,
                      cache = TRUE)



