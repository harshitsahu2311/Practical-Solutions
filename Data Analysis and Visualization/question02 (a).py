import numpy as np
import random

#First of all, we will create a random
#2D Array of Integers. Let us assume
#that the array contains values from 0
#to 100 randomly and the size of the array
#ranges from 2x2 to 100x100 randomly

array_row = random.randint(2,100) # inclusive of both 2 and 100
array_column = random.randint (2,100)
random_array = np.random.randint(1,100,size=(array_row,array_column))

# COMPUTING MEAN, STANDARD DEVIATION AND VARIANCE
# mean = np.mean(random_array, axis = 1)
mean = np.mean(random_array, axis=1)
std_dev = np.std(random_array, axis=1)
variance = np.var(random_array, axis=1)

print("Mean along second axis:", mean)
print("Standard deviation along second axis:", std_dev)
print("Variance along second axis:", variance)
