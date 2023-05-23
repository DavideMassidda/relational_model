library(tidyverse)

subjects <- read.csv("data/subjects.csv")
str(subjects)

study <- read.csv("data/study.csv")
str(study)

experiment <- left_join(study, subjects, by=c("Subject.Id"="Id"))

x <- c(2,5,7,1,9)

mean(x+10)/2+x

x %>%
    `+`(10) %>%
    mean() %>%
    `/`(2) %>%
    `+`(x)

study %>%
    left_join(subjects, by=c("Subject.Id"="Id")) %>%
    group_by(Sex) %>%
    summarise(
        Mean=mean(Value)
    )
