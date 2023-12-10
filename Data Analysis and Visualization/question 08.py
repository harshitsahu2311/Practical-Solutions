import pandas as pd

# Creating the DataFrame
data = {
    'Name': ['Shah', 'Vats', 'Vats', 'Kumar', 'Vats', 'Kumar', 'Shah', 'Shah', 'Kumar', 'Vats'],
    'Gender': ['Male', 'Male', 'Female', 'Female', 'Female', 'Male', 'Male', 'Female', 'Female', 'Male'],
    'MonthlyIncome (Rs.)': [114000.00, 65000.00, 43150.00, 69500.00, 155000.00, 
                            103000.00, 55000.00, 112400.00, 81030.00, 71900.00]
}

df = pd.DataFrame(data)

# Displaying the DataFrame
print(df)

#PART A
# Grouping by 'Name' and calculating sum of monthly income
family_income = df.groupby('Name')['MonthlyIncome (Rs.)'].sum()

# Displaying family-wise gross monthly income
print(family_income)

#PART B
# Getting the row with the highest monthly income in each family
highest_income_per_family = df.loc[df.groupby('Name')['MonthlyIncome (Rs.)'].idxmax()]

# Displaying member with the highest monthly income in each family
print(highest_income_per_family)

#PART C
# Filtering members with income greater than Rs. 60000.00
high_income_members = df[df['MonthlyIncome (Rs.)'] > 60000.00]

# Displaying monthly income of members with income greater than Rs. 60000.00
print(high_income_members)
