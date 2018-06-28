library("here")
library("magrittr")
library("tidyverse")
library("ggplot2")


#  custom ggtheme, import from Github
source("https://raw.githubusercontent.com/mikedecr/theme-mgd/master/theme_mgd.R")
theme_set(theme_mgd()) # set default theme


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
           text_font_google   = google_font("Source Sans Pro"), 
           code_font_google   = google_font("Roboto Mono"),
           # code_font_google   = google_font("CamingoCode"),
           text_bold_color = "#000000",
           code_inline_color = "#000000")
