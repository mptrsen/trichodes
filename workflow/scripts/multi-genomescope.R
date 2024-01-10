here::i_am("doc/reports/genomescope.Rmd")

library(here)
library(rmarkdown)

args <- commandArgs(trailingOnly = TRUE)

if (exists("snakemake")) {
  sample_name <- snakemake@wildcards[['sample']]
  summary_path <- snakemake@input[['summary']]
} else {
  sample_name <- args[1]
  summary_path <- args[2]
}

rmarkdown::render("doc/reports/genomescope.Rmd", params = list(sample_name = sample_name, summary_path = here(summary_path)),
                  output_file = paste(sample_name, '.genomescope.html', sep = ""))
