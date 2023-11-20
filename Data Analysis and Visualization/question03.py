import numpy as np
import pandas as pd

# Creating a DataFrame with 3 columns and 50 rows with random values
df = pd.DataFrame({
    'Column 1':np.random.rand(50),
    'Column 2':np.random.rand(50),
    'Column 3':np.random.rand(50)
})

#Printing DataFrame
print(df)

#Getting 10% of values
ten_percent = int(df.size * 0.1)

#Replacing 10% of values with null values
random_rows = np.random.choice(df.index,size=ten_percent) ##RANDOM ROWS
random_columns = np.random.choice(df.columns,size=ten_percent) ##RANDOM COLUMNS

# REPLACING RANDOM ROWS AND COLUMNS
for i in range(ten_percent):
    df.at[random_rows[i],random_columns[i]] = np.nan
    
print(df)

# PART A
# FINDING MISSING VALUES

print("Total Missing Values:",df.isnull().sum().sum())

# PART B
# DROP THE COLUMN HAVING MORE THAN 5 NULL VALUES

dfColumnsWithNullValuesMoreThanFive = df.columns[df.isnull().sum()>5]
dfpartb = df.drop(columns=dfColumnsWithNullValuesMoreThanFive,axis=1,inplace=False)
print(dfpartb)

# PART C
# Identify the row label having maximum of the sum of all values in a row and drop that row.

summeddf = df.sum(axis=1)
maxRowLabel = summeddf[summeddf == max(summeddf)]
print(maxRowLabel)
dfpartc = df.drop(maxRowLabel.index,axis=0)
print(dfpartc)

# PART D
# Sort the dataframe on the basis of the first column.

print(df.sort_values(by='Column 1'))

# PART E
# Remove all duplicates from the first column.

print(df.drop_duplicates(subset='Column 1'))

# PART F
# Find the correlation between first and second column and covariance between second and third column.

# Calculating correlation between the first and second columns
correlation_12 = df['Column 1'].corr(df['Column 2'])

# Calculating covariance between the second and third columns
covariance_23 = df['Column 2'].cov(df['Column 3'])

# Displaying correlation and covariance
print(f"Correlation between Column1 and Column2: {correlation_12}")
print(f"Covariance between Column2 and Column3: {covariance_23}")


#PART G
# Detect the outliers and remove the rows having outliers.

# Calculating z-scores for each column
z_scores = (df - df.mean()) / df.std()

# Identifying outliers (considering z-score threshold of 3)
outliers =df[(z_scores > 0.25) | (z_scores < 0.25)].dropna(inplace=False)

print("Outliers:")
print(outliers)

# PART H
#Discretize second column and create 5 bins
bins = [0.2,0.4,0.6,0.8,1]
print(pd.cut(df['Column 2'],bins))
