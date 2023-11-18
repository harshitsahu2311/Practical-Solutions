import pandas as pd

# Read the Excel files into dataframes
day1_df = pd.read_excel('Workshop_Day1.xlsx')
day2_df = pd.read_excel('Workshop_Day2.xlsx')

# a. Students who attended both days
both_days_attendance = pd.merge(day1_df['Name'], day2_df['Name'], on='Name')
print("Students attended both days:")
print(both_days_attendance)

# b. Students who attended either day
either_day_attendance = pd.concat([day1_df['Name'], day2_df['Name']]).drop_duplicates()
print("\nStudents attended either day:")
print(either_day_attendance)

# c. Merge dataframes row-wise and count total records
merged_row_wise = pd.concat([day1_df, day2_df])
total_records = merged_row_wise.shape[0]
print(f"\nTotal number of records after merging row-wise: {total_records}")

# d. Merge dataframes and use multi-row indexes to generate descriptive statistics
merged_multi_index = pd.merge(day1_df, day2_df, on=['Name', 'Duration'])
merged_multi_index.set_index(['Name', 'Duration'], inplace=True)
stats = merged_multi_index.describe()
print("\nDescriptive statistics for multi-index (Name and Duration):")
print(stats)
