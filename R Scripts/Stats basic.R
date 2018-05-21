#To find the quantile:
x = c(18, 18, 18, 18, 19, 20, 20, 20, 21, 22, 22, 23, 24, 26, 27, 32, 33, 49, 52, 56)
quantile(x, probs = c(0, 0.25, 0.5, 0.75, 1))

#To find mean
num = c(55,56,98,97,92,93,64,95,65,35,36,17,65,74,75,77,35)
mean(num)

#To find median
num = c(55,56,98,97,92,93,64,95,65,35,36,17,65,74,75,77,35)
median(num)

#To find mode
num = c(55,56,98,97,92,93,64,95,65,35,36,17,65,74,75,77,35)
Mode = table(as.vector(num))
names(Mode)[Mode == max(Mode)]

#===============Measure of variablilty=================
set1= c(1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 11)
set2= c(4, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 8)
#-------------------------set1-----------------------
mean(set1)
median(set1)
mode1 = table(as.vector(set1))
names(mode1)[mode1 == max(mode1)]
#-------------------------set2-----------------------
mean(set2)
median(set2)
mode2 = table(as.vector(set2))
names(mode2)[mode2 == max(mode2)]
#=======================================================

#Finding the interquantile range of the above datasets
range1 =quantile(set1,probs = c(0,1))
range2 =quantile(set2,probs = c(0,1))

range1
range2

#To find the interquantile range of set1
11-1

#To find the interquantile range of set2
8-4

#=======================================================
#To find variance(bezel's correction)
num = c(55,56,98,97,92,93,64,95,65,35,36,17,65,74,75,77,35)
var(num)

#To find variance(without bezel's correction)
num = c(55,56,98,97,92,93,64,95,65,35,36,17,65,74,75,77,35)
mean(num)
xi = mean(num)-num
xi
xi^2
sum(xi^2)
sum(xi^2)/17

#To find Standard deviation(bezel's correction)
num = c(55,56,98,97,92,93,64,95,65,35,36,17,65,74,75,77,35)
sd(num)

#To find standard deviation(without bezel's correction)
num = c(55,56,98,97,92,93,64,95,65,35,36,17,65,74,75,77,35)
mean(num)
xi = mean(num)-num
xi
xi^2
sum(xi^2)
sum(xi^2)/17
sqrt(sum(xi^2)/17)

#To calculate the z-score
#======================================================
# Z-score is a measure of distance from the mean
# Since the mean is at a distance of 0 from the mean, hence the z-score of mean is 0
# A data point is measured as per how many standard deviations away from the mean
# and hence that becomes its Z score 

?pnorm
# P(X<=70)
pnorm(q=70,mean=75 , sd=5, lower.tail = T)
pnorm(q=70,mean=75 , sd=5)

#P(X>=85)
pnorm(q=85,mean=75,sd=5, lower.tail = F)

#P(Z >= 1)
pnorm(q=1, mean=0,sd=1,lower.tail = F)



#====================================================================
# How to Calculate Correlation and Covariance
#====================================================================
# Use the lungcap data
cor(Age,LungCap, method = "pearson")

cor(Age,LungCap) #Default is pearson's corrilation
#order of the varriable does not make any difference
cor(Age,LungCap,method = "spearman")
cor(Age,LungCap,method = "kendall")
cor.test(Age,LungCap, method = "pearson")
cor.test(Age,LungCap, method = "spearman")
cor.test(Age,LungCap, method = "spearman",exact = F)
cor.test(Age,LungCap, method = "pearson",alt = "greater",conf.level = 0.99)
cov(Age,LungCap)
pairs(Data)

#====================================================================
#  Linear Regression
#====================================================================
attach(Data)
cor(Age,LungCap)
?lm #Help page for fitting a linear regression 
mod = lm(LungCap ~ Age) #First variable is x variable second vaiable is y variable.
summary(mod)

attributes(mod)
mod$coefficients

coef(mod) #2 method of extracting coefficient.

confint(mod) #Produce confidence intervals 
confint(mod,level=0.99)

anova(mod)#anova table
sqrt(2.3)#square root of 2.3

#To generate a normal distribution curve:
set.seed(3000)
xseq<-seq(-4,4,.01)
densities<-dnorm(xseq, 0,1)
cumulative<-pnorm(xseq, 0, 1)
randomdeviates<-rnorm(1000,0,1)

par(mfrow=c(1,3), mar=c(3,4,4,2))

plot(xseq, densities, col="darkgreen",xlab="", ylab="Density", 
     type="l",lwd=2, cex=2, main="PDF of Standard Normal", cex.axis=.8)

#======================================================
# T Distribution and T Scores
#======================================================
?pt #Help menue for t distribution
#t-stat=2.3, df =25
#one - sided pvalue
#P(t>2.3)
pt(q=2.3,df=25,lower.tail = F)
#tow- sided pvalue
pt(q=2.3, df=25, lower.tail = F)+pt(q=-2.3,df=25,lower.tail = T)

#find t for 95% confidence,value of t with 2.5% in each tail
qt(p=0.025, df= 25, lower.tail = T)

?pf #Help menue for the F Distribution
?pexp #Help menue for probablity of The Exponential Distribution.

#======================================================
# One-Sample t Test
#======================================================
?t.test #Student's t-Test help menu.
#Ho: mu<8
# one-sided 95% confidence interval for mu
t.test(LungCap, mu= 8, alternative = "less", conf.level = 0.95)
t.test(LungCap, mu= 8, alt = "less", conf = 0.95)#Shorter way of writing the above.

# two- sided
t.test(LungCap, mu= 8, alt = "two.sided", conf = 0.95)

t.test(LungCap, mu= 8, conf=0.95)#two-sided test is the default test in R

TEST=t.test(LungCap, mu= 8, alt = "two.sided", conf = 0.99)
attributes(TEST) #attributes which are related to that test.

#=======================================
# Finding the p-value
#=======================================
a = 5
s = 2
n = 20
xbar = 7
z = (xbar-a)/(s/sqrt(n))
z
2*pnorm(-abs(z))

"We now look at the same problem only specifying
the mean and standard deviation within the pnorm command. 
Note that for this case we cannot so easily force the use of the left tail.
Since the sample mean is more than the assumed mean we have to take
two times one minus the probability:"
a = 5
s = 2
n = 20
xbar = 7
2*(1-pnorm(xbar,mean = a,sd=s/sqrt(20)))

#======================================================
# Analysis of Variance (ANOVA) 
#======================================================
attach(DietData)
?aov # Anova help command

#Run a box plot of the Weight loss vs Diet
ggplot(DietData,aes(y = WeightLoss, x= Diet)) + geom_boxplot()+labs( title= "Box plot of Weightloss vs Diet",x = "Type of Diet",y = "Weight Loss")

# Ho: Mean weight loss is same for all the diets.
aov(WeightLoss~Diet)

# Save the above in an object ANOVA1
ANOVA1 = aov(WeightLoss~Diet)

# Generating summery of the data to further analyse.
summary(ANOVA1)

# Generate a list of attributes associated with ANOVA1
attributes(ANOVA1)

#Extracting the coefficients
ANOVA1$coefficients

#=========================================
# F-test exmple solution
#=========================================
scotland =c(113,115,120,109,105,103,103,99,128,96,125,107,115,131,119)
ireland = c(120,140,112,109,114,116,99,108,109,111,109,131,117,101)

S = scotland
I = ireland

#F-test
var.test(S,I)
#=============================================
#===========================================================
# Chi-Square Test
#===========================================================
?chisq.test #To open the help page of chi-square test
table(Gender,Smoke) #Creating a Smoke vs Gender table
TAB = table(Gender,Smoke) #Saving the table as TAB
barplot(TAB, beside = T, legend= T) #Create a barplot
chisq.test(TAB, correct = T) #perform a chi-square test 
CHI = chisq.test(TAB, correct = T) #Storing the above value as CHI
attributes(CHI) #To view the objects stored in CHI value

#Extracting expected values 
CHI$expected
#===========================================================
# Correlation scatterplot
#===========================================================
no_of_chirps = c(18,20,21,23,27,30,34,39)
temperature = c(57,60,64,65,68,71,74,77)

plot(no_of_chirps,temperature,
     main="Scatterplot of cricket chirps versus outdoor temperature.",col='blue',
     xlab='Number of Cricket Chirps',ylab = 'Temperature(degrees Fahrenheit)',lwd=1.5)
#===========================================================
# Finding the correlation r
#===========================================================
#Direct meathod
x=c(3,3,6)
y=c(2,3,4)
cor(x,y)
#===========================================================
bill = c(34,108,64,88,99,51)
tip = c(5,17,11,8,14,5)

x=bill
y=tip

#To find the mean of x
xbar = mean(x)
xbar
#To find the mean of y
ybar = mean(y)
ybar

#To find the deviation of x from the mean
dev_x=x-xbar
dev_x

#To find the deviation of y from the mean
dev_y=y-ybar
dev_y

#To find the product of deviations:
prod_dev=dev_x * dev_y
prod_dev

#To find the square of x deviations:
(dev_x)^2

#Sum of product of deviations
sigma_prod_dev=sum(prod_dev)
sigma_prod_dev

#Sum of the square of x deviations
sigma_xdev=sum((dev_x)^2)
sigma_xdev

#To calculate bi
bi=(sigma_prod_dev)/(sigma_xdev)
bi

#To calculate the intercept
b0 = ybar-xbar*bi
b0

#============================================
#Basic probability
A = 4
S = 52
probability_of_event_A = A/S
probability_of_event_A
#============================================
#Bayes theorem

#Patient has liver disease
A=0.10
#Patient is an alcoholic
B=0.05
#Patient is alocholic and has liver disease
C=0.07

#As per bayes's Theorem
P=(C*A)/B
P

