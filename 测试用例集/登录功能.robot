*** Settings ***
Resource    ../PageObject/login.robot
Library    SeleniumLibrary    

Test Setup    SeleniumLibrary.Open Browser    WWW.MI.COM    chrome
Test Teardown    SeleniumLibrary.Close Browser


*** Test Cases ***
