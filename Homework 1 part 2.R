

passengers = read.delim('titanic.csv', sep = '\t', header = TRUE)
library(tidyr)
head(passengers)
passengers %>% drop_na() %>% summary()
passengers %>% filter(Sex == "male")
passengers %>% arrange(desc(Fare))
passengers %>% mutate(FamSize = Parch + SibSp)
passengers %>% group_by(Sex) %>% summarise(meanFare = mean(Fare), numSurv = sum(Survived))


diabetes=read.delim('diabetes_train.csv', sep = ',', header = TRUE)


head(diabetes)

duration = diabetes$skin

quantile(duration, c(.10,.30,.50,.60))