*** Settings ***
Documentation     This file contains the test cases for the registration feature

Resource          ../resources/Base.resource

Test Setup        Iniciar sessão
Test Teardown     Fechar sessão

*** Test Cases ***
Cadastro com sucesso
    [Documentation]    Este teste valida o cadastro com sucesso
    Log    Iniciando o teste de cadastro
    Click Element    //android.widget.TextView[@text="Login"]
    Wait Until Element Is Visible    //android.widget.TextView[@text="Sign up"]
    Click Element    //android.widget.TextView[@text="Sign up"]
    Sleep    5
