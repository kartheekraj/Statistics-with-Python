#Regression 
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