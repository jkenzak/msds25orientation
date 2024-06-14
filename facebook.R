library(tidyverse)

data <- read_csv("MSDS-Orientation-Computer-Survey(in).csv")

facebook <- data.frame(year = format(as.Date(data$Timestamp, format = "%m/%d/%Y %H:%M"), "%Y"),
                       netbadge = data$`What is your uva net id? (e.g. mst3k)`, 
                       username = data$`What is your github user name?`,
                       os = data$`Operating System`,
                       cycle_ghz = data$`CPU Cycle Rate (in GHz)`,
                       cores = data$`CPU Number of Cores (int)`,
                       ram = data$`RAM (in GB)`,
                       harddrive = data$`Hard Drive Size (in GB)`,
                       gpu_cores = data$`GPU CUDA Number of Cores (int)`)

facebook$year <- as.integer(facebook$year) + 1

ggplot(facebook, aes(x = cores, fill = as.factor(year))) + geom_histogram() + xlim(0, 20) +
  labs(title = "# of CPU Cores Frequency Separated by Graduation Year", 
       x = "CPU # of Cores", y = "Frequency", fill = "Grad Year")
