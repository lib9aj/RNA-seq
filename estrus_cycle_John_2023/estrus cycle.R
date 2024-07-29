
#When get a raw data, use terminal to unzip
#1.tar -xvf GSE216120_RAW.tar
#2.gunzip *.tsv.gz


#In R
library(tidyverse)
setwd("/Users/lib9aj/git/RNA-seq/estrus_cycle_John_2023/GSE216120")


# 获取文件列表并读取数据
data_list <- list.files(pattern = "*.tsv") %>%
  lapply(read_tsv) %>%
  reduce(full_join, by = "target_id")

head(data_list)
