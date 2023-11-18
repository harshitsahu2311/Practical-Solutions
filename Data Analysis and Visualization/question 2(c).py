import numpy as np

# Get user inputs for array shape
m = int(input("Enter the number of rows (m): "))
n = int(input("Enter the number of columns (n): "))

# Create a 2D array of size m x n with integer ranging from 1 to 100
arr = np.arange(m * n).reshape(m,n)

print("Original Array:\n",arr)

# Display shape, type, and data type of the array
print("Array shape:", arr.shape)
print("Array type:", type(arr))
print("Data type of array elements:", arr.dtype)

# Reshape the array into nxm array
reshaped_arr = arr.reshape(n, m)
print("Reshaped array:")
print(reshaped_arr)
