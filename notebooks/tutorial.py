# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %%
from datetime import datetime
print ("Today is:" + str(datetime.now()))


# %%
def say_hello(recipient):
    return 'Hi, {}!'.format(recipient)
say_hello('Curious') + " Welcome to the Jupyter Notebooks tutorial!"


# %%
import numpy as np
def square(x):
    return x * x
print ("You can use the awesome numpy to do things like:")
x = np.random.randint(1, 10)
print ("The square of {} is: ".format(x) + str(square(x)))


# %%
import os
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
sns.set(style="darkgrid")

df = pd.read_csv(os.getcwd() + '/TutorialNotebooks/UserSample.csv')
df.head()


# %%
print ("Total records: " + str(len(df)))
df.dtypes


# %%



