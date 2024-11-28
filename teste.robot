*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Test Cases ***
Test Case Name
    Open Application    http://127.0.0.1:4723    
    ...    platformName=Android    
    ...    appium:deviceName=ebac-qa    
    ...    appium:automationName=UIAutomator2    
    ...    appium:app=/Users/fabioaraujo/Desktop/android.wdio.native.app.v1.0.8.apk    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:nativeWebScreenshot=${True}    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}

