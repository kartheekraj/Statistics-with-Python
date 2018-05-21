import matplotlib.pyplot as plt

ages = [22,55,56,65,45,21,43,34,45,5,66,88,98,76,87,56,67,83,45,62,4,6,98,17,45]

plt.hist(ages)

plt.xlabel('Ages in years')
plt.ylabel('Frequency')
plt.title('Population Histogram')
plt.legend()
plt.show()





