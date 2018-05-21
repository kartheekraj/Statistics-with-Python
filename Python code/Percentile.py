import numpy as np

x = [18, 18, 18, 18, 19, 20, 20, 20, 21, 22, 22, 23, 24, 26, 27, 32, 33, 49, 52, 56]

print(np.percentile(x,25))
print(np.percentile(x,50))
print(np.percentile(x,75))
