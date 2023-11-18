import numpy as np

# Create a sample array
sample_array_2d = np.array([[1, 0, 5, 0, np.nan],
                            [7, np.nan, 3, 0, 9]])

# Test for zero elements
zero_indices_2d = np.transpose(np.where(sample_array_2d == 0))

# Test for non-zero elements
non_zero_indices_2d = np.transpose(np.where(sample_array_2d != 0))

# Test for NaN elements
nan_indices_2d = np.transpose(np.where(np.isnan(sample_array_2d)))

print("Indices of zero elements:", zero_indices_2d)
print("Indices of non-zero elements:", non_zero_indices_2d)
print("Indices of NaN elements:", nan_indices_2d)
