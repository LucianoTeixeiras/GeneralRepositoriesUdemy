# -*- coding: utf-8 -*-
"""
Created on Tue Jan  1 22:29:08 2019

@author: Luciano
"""

import pandas as pd
base = pd.read_csv('credit_data.csv')
base.describe()