*** Settings ***
Documentation     This resource file contains common keywords for the tests
Library           AppiumLibrary

*** Keywords ***
Iniciar sessão
    Open Application
    ...    http://localhost:4723
    ...    platformName=Android
    ...    deviceName=ebac-qa
    ...    automationName=UIAutomator2
    ...    app=${EXECDIR}/app/android.wdio.native.app.apk
    ...    autoGrantPermissions=true
    ...    udid=emulator-5554
    Sleep    5

Fechar sessão
    Close Application
