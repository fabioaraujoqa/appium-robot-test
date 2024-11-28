*** Settings ***
Documentation     Testes de login

Resource          ../resources/Base.resource

Test Setup        Iniciar sessão
Test Teardown     Fechar sessão

*** Test Cases ***
Cadastro com sucesso
    Log    Iniciando o teste de cadastro
    Click Element    //android.widget.TextView[@text="Login"]
    Input Text    //android.widget.EditText[@content-desc="input-email"]        admin@admin.com
    Input Text    //android.widget.EditText[@content-desc="input-password"]     Teste@123
    Click Element    //android.widget.TextView[@text="LOGIN"]

    Wait Until Page Contains Element    android:id/message    timeout=5s

    ${message_text}=    Get Text    android:id/message
    Should Be Equal As Strings    ${message_text}    You are logged in!
    Sleep    5
