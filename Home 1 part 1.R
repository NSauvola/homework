
#Reading the text file into a variable
su = read.delim('Su_raw_matrix.txt', sep = '\t', header = TRUE)

head(su)




#finding mean of column Liver_2.CEL
mean(su$Liver_2.CEL)

#finding Standard Deviation of column Liver_2.CEL
sd(su$Liver_2.CEL)

#finding the means of every column
colMeans(su)

#finding the sum of all columns 
colSums(su)



hist(rnorm(1000, mean = 0,sd = 0.2))

hist(rnorm(1000, mean = 0,sd = 0.5))

dat <- data.frame(cond = factor(rep(c("A","B"), each=200)),
                  rating = c(rnorm(200),rnorm(200, mean=.8)))

# Overlaid histograms
ggplot(dat, aes(x=rating, fill=cond)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity")

# Interleaved histograms
ggplot(dat, aes(x=rating, fill=cond)) + geom_histogram(binwidth=.5, position="dodge")

# Density plots
ggplot(dat, aes(x=rating, colour=cond)) + geom_density()


# Density plots with semitransparent fill
ggplot(dat, aes(x=rating, fill=cond)) + geom_density(alpha=.3)


diabetes=read.delim('diabetes_train.csv', sep = '\t', header = TRUE)


  # Overlaid histograms
ggplot(diabetes, aes(x=rating, fill=cond)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity")

 # Interleaved histograms
ggplot(diabetes, aes(x=rating, fill=cond)) + geom_histogram(binwidth=.5, position="dodge")

   # Density plots
ggplot(diabetes, aes(x=rating, colour=cond)) + geom_density()

diabetes=read.delim('diabetes_train.csv', sep = '\t', header = TRUE)

head(diabetes)

