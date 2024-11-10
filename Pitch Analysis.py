import pandas as pd
from scipy.stats import skew, kurtosis


# Original File Name
old_path = 'data.csv'
data = pd.read_csv(old_path)

# Pitcher Name and Pitch Type
pitcher_name = input("Enter the Pitcher Name: ")
pitch_type = input("Enter the pitch type: ")

# Columns to keep
keep = [
    'Pitcher',
    'AutoPitchType',
    'PitchCall',
    'RelSpeed',
    'RelHeight',
    'Extension',
    'SpinRate',
    'SpinAxis',
    'VertBreak',
    'HorzApprAngle'
]

#All number columns
number = keep[3:]

# Filter and keep relevant columns
kept = data[keep]

# Filter data for the specific pitcher and pitch type
filtered_data = kept[(kept['Pitcher'] == pitcher_name) &
                     (kept['AutoPitchType'] == pitch_type)]

# Calculate skewness and kurtosis for numerical columns
skewness = filtered_data[number].apply(lambda x: skew(x.dropna()))
kurt = filtered_data[number].apply(lambda x: kurtosis(x.dropna()))
summary = filtered_data[number].describe()

#Pitch Outcome
call = filtered_data['PitchCall'].value_counts()

#Pitch Usage
usage_data = kept[kept['Pitcher'] == pitcher_name]
usage = usage_data['AutoPitchType'].value_counts()

pd.set_option('display.max_columns', None)  
pd.set_option('display.width', None)

# Print results
print(f"{pitcher_name}")


print("\nSkewness:")
print(skewness)

print("\nKurtosis:")
print(kurt)

print("\nSummary:")
print(summary)


call = filtered_data['PitchCall'].value_counts()
print(f"\n{pitch_type} Results:")
print(call)


usage_data = kept[kept['Pitcher'] == pitcher_name]
usage = usage_data['AutoPitchType'].value_counts()

print("\nPitch Usage:")
print(usage)
