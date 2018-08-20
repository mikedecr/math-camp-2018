# ----------------------------------------------------
#   Setup file for Math Camp scripts
#   Run this before anything else
#   Working directory should ALREADY be the PROJECT ROOT
# ----------------------------------------------------

# should be in "math-camp" folder already
library("here")

# data stuff
library("magrittr")
library("tidyverse")

# slides
library("knitr")
library("webshot")


# --- Build slideshows -----------------------

# this code automates the building of .rmd files into HTML
# and then it automates the snapshotting of HTMLs into PDFs
# (using webshot; decktape was a paaaaaaaiiiin)


build_frame <- 
  data_frame(stem = c("0-intro", 
                      "1-pre-calc", 
                      "2-algebra", 
                      "3-calculus", 
                      "4-probability")) %>%
  mutate(rmdfile = str_glue("lectures/{stem}/lecture-{stem}.rmd"),
         htmlfile = str_glue("lectures/{stem}/lecture-{stem}.html"), 
         htmlpath = str_glue("file://{normalizePath(here(htmlfile))}"),
         pdfdest = str_glue("lectures/pdf/{stem}.pdf")) %>%
  group_by(stem) %>%
  nest() %>% 
  print()



# build RMD to HTML
build_frame %$%
  lapply(data, function(x) {
   rmarkdown::render(input = here(x$rmdfile), 
                     output_file = here(x$htmlfile),
                     output_format = "xaringan::moon_reader")
   print(str_glue("{x$rmdfile} done"))
  })



# make PDFs
# this is some shoddy shit
dir.create(here("lectures/pdf"))
build_frame %$%
  lapply(data, function(x) {
   webshot(x$htmlfile, x$pdfdest, delay = 10)
   print(str_glue("{x$pdfdest} successfully webshatted"))
   beepr::beep(1)
  })


# # make embed fonts into PDF
# this is commented out because it maybe makes things worse?
# Still testing

# lapply(build_frame$data, function(x) {
#  extrafont::embed_fonts(x$pdfdest)
#  print(str_glue("{x$pdfdest} fonts done"))
#  beepr::beep(1)
# })

