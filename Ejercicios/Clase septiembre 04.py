import pandas as pd
import matplotlib as mpl
import seaborn as sns

tips = sns.load_dataset ("tips")
print(tips.iloc[0:5])

#sns.set()

sns.lmplot(data=tips, x="total_bill", y="tip",hue ="smoker")
mpl.pyplot.show()

my_list =[]
my_list = list()
My_list =[4,7,42]
my_list2=["a","b","c"]
my_list3=["a",1,"python",5]

my_nested_list = [my_list,my_list2]

combo_list =[]
one_list = [4,5]

aux = combo_list.extend(one_list)

combo_list = my_list + my_list2

vowels =["a","i","u","e","o"]
vowels.sort()
print(vowels)
