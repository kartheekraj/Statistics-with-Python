import matplotlib.pyplot as plt
from statistics import mean
import numpy as np

bill = np.array([34,108,64,88,99,51])
tip = np.array([5,17,11,8,14,5])

#Assigning x as bill and y as tip
x = bill
y = tip

#Mean of the x and y
xbar = mean(x)
ybar = mean (y)

def best_fit_slope_intercept(x,y,xbar,ybar):
    b1=((xbar*ybar)-mean(x*y))/((xbar**2)-mean(x**2))
    b0 = ybar - b1*xbar
    return b1,b0

b1,b0 = best_fit_slope_intercept(x,y,xbar,ybar)

#To print the values of slope and intercept
print(b1,b0)

regression_line = [(b1*i)+b0 for i in x]
#To plot the regression line
plt.plot(x,regression_line)

tip_mean=np.mean(tip)

#To produce a scatter plot of meal vs tip
plt.scatter(bill,tip)

#To produce a horizontal red line at the mean of the tips
plt.axhline(tip_mean,color='red',linewidth=2,linestyle='dashed') 
plt.title("Tip amount")
plt.xlabel("Bill number")
plt.ylabel("Tip in Rupees")
plt.grid(True,color='grey')
plt.show()




