# ORIGINAL DICTIONARY
original_dict = {'Boys': [72, 68, 70, 69, 74], 'Girls': [63, 65, 69, 62, 61]}

result_list = [];
# TAKING A  VARIABLE I AND THEN ITERATING IT IN RANGE FROM 0 TO THE LENGTH OF BOYS LIST MINUS ON
for i in range(len(original_dict['Boys'])):
    result_list.append([{'Boys':original_dict['Boys'][i],'Girls': original_dict['Girls'][i]}])

print(result_list)
