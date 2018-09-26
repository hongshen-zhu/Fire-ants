library(dplyr)
library(haven)
anes_timeseries_cdf <- read_dta("anes_timeseries_cdf.dta")
data <- anes_timeseries_cdf %>%
  filter(VCF0004 >=1956) %>%
  select(VCF0004, VCF0112, VCF0170a, VCF0170b, VCF0170d) %>% 
  filter(VCF0112 == 3 | VCF0112 == 4)  #exclude north and midwest respondants
 