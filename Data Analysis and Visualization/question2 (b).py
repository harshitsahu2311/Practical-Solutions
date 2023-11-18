import numpy as np

B = np.array([56, 48, 22, 41, 78, 91, 24, 46, 8, 33])

# Get the indices of the sorted elements
sorted_indices = np.argsort(B)

#What argsort does is that it returns the indices of elements
#as if they were arranged in an ascending order, in the order
#of the original array

print("Indices of sorted elements:", sorted_indices)
