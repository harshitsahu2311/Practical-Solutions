import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

iris = sns.load_dataset('iris')

#part A
sns.countplot(x='species',data=iris,palette='Set2')
plt.xlabel('Species')
plt.ylabel('Frequency')
plt.title('Frequency of Each class label')
plt.show()

#part B
plt.scatter(x='petal_width',y='sepal_width',data=iris)
plt.xlabel('Petal Width')
plt.ylabel('Sepal Width')
plt.title("Scatter plot Petel width vs Sepal Width")
plt.show()

#part C
sns.histplot(iris['petal_length'],kde=False,bins=30)
plt.show()

#part D
sns.pairplot(iris,hue='species',palette='coolwarm')
plt.show()
