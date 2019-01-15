'''
Created on 2019年1月15日

@author: Administrator
'''

# coding:utf-8
from robot.version import get_version

class mysqlLib(object):
    
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = get_version()

    def mysqlName(self,a):
        print(a)