devtools::install_github("hodgettsp/cesR")

library(cesR)
library(tidyverse)

cesR::get_ces(srvy = "ces2019_web")
class(ces2019_web$cps19_fed_gov_sat )

ces2019_web
ggplot(data = ces2019_web, aes(x = cps19_fed_gov_sat  )) +
  geom_bar()

class(ces2019_web$cps19_votechoice )

ces2019_web
ggplot(data = ces2019_web, aes(x = cps19_votechoice  )) +
  geom_bar()

ces2019_web1 <-
  ces2019_web %>%
  filter(cps19_fed_gov_sat >2)
ggplot(data = ces2019_web1, aes(x = cps19_votechoice  )) +
  geom_bar()

ces2019_web2 <-
  ces2019_web %>%
  filter(cps19_fed_gov_sat < 3) 
ggplot(data = ces2019_web2, aes(x = cps19_votechoice  )) +
  geom_bar()