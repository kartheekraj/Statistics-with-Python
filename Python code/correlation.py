import matplotlib.pyplot as plt

no_of_chirps = [18,20,21,23,27,30,34,39]
temperature = [57,60,64,65,68,71,74,77]

plt.scatter(no_of_chirps,temperature)
plt.title('Scatterplot of cricket chirps versus outdoor temperature.')
plt.ylabel('Temperature(degrees Fahrenheit)')
plt.xlabel('Number of Cricket Chirps')
plt.show()




