import pandas as pd
import numpy as np
import random
from datetime import datetime, timedelta

# Generating sample data for sales training/weather forecasting dataset
np.random.seed(42)

# Generating sales training data
sales_data = {
    'Salesperson': np.random.choice(['John', 'Alice', 'Bob', 'Emily'], 100),
    'Product': np.random.choice(['A', 'B', 'C', 'D'], 100),
    'Sales': np.random.randint(10000, 50000, 100)
}

sales_df = pd.DataFrame(sales_data)

# Generating weather forecasting data
date_today = datetime.now()
dates = [date_today - timedelta(days=x) for x in range(100)]

weather_data = {
    'Date': dates,
    'Temperature(C)': np.random.randint(10, 35, 100),
    'Humidity(%)': np.random.randint(30, 80, 100),
    'Wind_Speed(km/h)': np.random.randint(5, 25, 100)
}

weather_df = pd.DataFrame(weather_data)

# Displaying sales training data
print("Sales Training Data:")
print(sales_df.head())

# Displaying weather forecasting data
print("\nWeather Forecasting Data:")
print(weather_df.head())

#PART A
# Computing mean of sales grouped by salesperson
sales_mean_by_person = sales_df.groupby('Salesperson')['Sales'].mean()

# Displaying mean sales by salesperson
print("\nMean Sales by Salesperson:")
print(sales_mean_by_person)

#PART B
# Introducing missing dates in weather data
missing_dates = random.sample(dates, 10)
weather_df.loc[weather_df['Date'].isin(missing_dates), ['Temperature(C)', 'Humidity(%)', 'Wind_Speed(km/h)']] = np.nan

# Filling missing dates with values of previous non-missing date
weather_df = weather_df.fillna(method='ffill')

# Displaying weather data with missing dates filled
print("\nWeather Data with Missing Dates Filled:")
print(weather_df.head())

#PART C
################ TO - DO ################

#PART D
# Grouping weather data by 'Temperature(C)' and 'Humidity(%)' and sorting aggregated results
sorted_weather_data = weather_df.groupby(['Temperature(C)', 'Humidity(%)']).mean().sort_values(by='Wind_Speed(km/h)', ascending=False)

# Displaying sorted aggregated weather data
print("\nSorted Aggregated Weather Data:")
print(sorted_weather_data.head())

#PART E
# Splitting sales data into groups with bin counts for 'Sales'
sales_df['Sales_bins'] = pd.cut(sales_df['Sales'], bins=5)
sales_groups = sales_df.groupby('Sales_bins')

# Displaying groups with bin counts
print("\nSales Data Split into Groups with Bin Counts:")
for group_name, group_data in sales_groups:
    print(f"Group: {group_name}\n{group_data.head()}\n")

