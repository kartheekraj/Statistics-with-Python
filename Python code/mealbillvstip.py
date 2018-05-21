import matplotlib.pyplot as plt
import numpy as np

bill=[34,108,64,88,99,51]
tip=[5,17,11,8,14,5]

bill_mean=np.mean(bill)
tip_mean=np.mean(tip)

#Scatter point of the bill vs tip
plt.scatter(bill,tip)

#Centroid
plt.scatter(bill_mean,tip_mean,color='red',s=100)

plt.grid(True,color='grey')
plt.xlabel("Bill amount(in Rs)")
plt.ylabel("Tip amount (in Rs)")
plt.title("Meal bill vs Tip amount")
plt.show()


