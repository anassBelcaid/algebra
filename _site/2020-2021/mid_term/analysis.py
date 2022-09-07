"""
Script to analyze the grades using pandas and seaborn
"""

import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt



if __name__ == "__main__":
    
    #Loading the csv
    grades = pd.read_csv("./grades.csv")
    print(grades.describe())

    fig, axs= plt.subplots(1,2)


    #Box plot of each local
    sns.boxplot(data=grades,x='grade', y='place', saturation=0.6, width=.5,
            ax=axs[0])


    #Kde plot of each distrubtion
    sns.kdeplot(data=grades, x='grade', hue='place', multiple='stack', ax=axs[1])
    plt.savefig('class_distribution.png')
    plt.show()






