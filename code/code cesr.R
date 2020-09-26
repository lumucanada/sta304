# download dataset from the website
devtools::install_github("hodgettsp/cesR")

library(cesR)
library(tidyverse)
library(devtools)
# use the data of 2019 election web
cesR::get_ces(srvy = "ces2019_web")


# construct the plot that shows the satisfaction of people for the federal government on a scale 1 to 5
ces2019_web %>%
  ggplot( aes(x = cps19_fed_gov_sat  )) + geom_bar()

# construct the plot that shows what party people will vote for
ces2019_web %>%
  ggplot(aes(x = cps19_votechoice  )) + geom_bar()

#  this plot shows the vote choice of the people who are not satisfied with the government
ces2019_web1 <-
  ces2019_web %>%
  filter(cps19_fed_gov_sat >2)
ggplot(data = ces2019_web1, aes(x = cps19_votechoice  )) +
  geom_bar()
#  this plot shows the vote choice of the people who are satisfied with the government
ces2019_web2 <-
  ces2019_web %>%
  filter(cps19_fed_gov_sat < 3) 
ggplot(data = ces2019_web2, aes(x = cps19_votechoice  )) +
  geom_bar()
