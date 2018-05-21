from matplotlib import pyplot as plt
x= [5,6,7,8]
y= [7,3,8,3]

x2= [5,6,7,8]
y2= [6,7,2,6]

plt.plot(x,y,'g',linewidth=5,label = 'Line one')

plt.plot(x2,y2,'c',linewidth=10, label='Line two')

plt.title('Line graph')
plt.ylabel('Y axis')
plt.xlabel('X axis')
plt.legend()
plt.show()


