# coding:utf-8

from robot.api import logger

from robot.version import get_version

class ExcelLib:
    
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = get_version()
    
    def Mul(self,a,b):
        logger.info("app/login")
        return int(a)*int(b)
    
    def Div(self,a,b):
        return  float(a/b,2)
        