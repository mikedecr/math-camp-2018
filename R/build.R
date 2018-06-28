# ----------------------------------------------------
#   Setup file for Math Camp scripts
#   (standardized options)
# ----------------------------------------------------

# should be in "math-camp" folder
system("touch .here")
library("here")


# --- Graphics -----------------------

saveRDS(primary, here("data/aesthetics/primary-color.RDS"))
saveRDS(secondary, here("data/aesthetics/secondary-color.RDS"))



# --- Slideshows -----------------------
# learn how to build all the way to HTML using code
# knitr::knit("lectures/0-intro/lecture-00-mathcamp-2018.rmd", output = "lectures/0-intro/lecture-00-mathcamp-2018.md")

# convert to PDF using decktape (doesn't work?)
# required installation of node.js and npm, modifying npm permissions and ~/.profile path variable
# system("`npm bin`/decktape remark ./lectures/0-intro/lecture-00-mathcamp-2018.html ./lectures/0-intro/lecture-00-mathcamp-2018.pdf") # decktape v2.5.0






