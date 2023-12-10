import pandas as pd

# Creating the DataFrame
data = {
    'Name': ['Mudit Chauhan', 'Seema Chopra', 'Rani Gupta', 'Aditya Narayan', 'Sanjeev Sahni', 
             'Prakash Kumar', 'Ritu Agarwal', 'Akshay Goel', 'Meeta Kulkarni', 'Preeti Ahuja', 
             'Sunil Das Gupta', 'Sonali Sapre', 'Rashmi Talwar', 'Ashish Dubey', 'Kiran Sharma', 
             'Sameer Bansal'],
    'Birth_Month': ['December', 'January', 'March', 'October', 'February', 'December', 'September', 
                    'August', 'July', 'November', 'April', 'January', 'June', 'May', 'February', 
                    'October'],
    'Gender': ['M', 'F', 'F', 'M', 'M', 'M', 'F', 'M', 'F', 'F', 'M', 'F', 'F', 'M', 'F', 'M'],
    'Pass_Division': ['III', 'II', 'I', 'I', 'II', 'III', 'I', 'I', 'II', 'II', 'III', 'I', 'III', 
                      'II', 'II', 'I']
}

df = pd.DataFrame(data)

# Displaying the DataFrame
print(df)

# PART A
# One-hot encoding the categorical columns
df_encoded = pd.get_dummies(df, columns=['Birth_Month', 'Pass_Division'])

# Displaying the encoded DataFrame
print(df_encoded)

#PART B
# Converting 'Birth_Month' column to categorical and specifying the order
months_order = ['January', 'February', 'March', 'April', 'May', 'June', 
                'July', 'August', 'September', 'October', 'November', 'December']

df['Birth_Month'] = pd.Categorical(df['Birth_Month'], categories=months_order, ordered=True)

# Sorting the DataFrame based on 'Birth_Month'
df_sorted = df.sort_values(by='Birth_Month')

# Displaying the sorted DataFrame
print(df_sorted)
