*** Settings ***
Documentation     This file contains the test cases for the registration feature

Resource          ../resources/Base.resource

Test Setup        Iniciar sessão
Test Teardown     Fechar sessão

*** Test Cases ***
Cadastro com sucesso
    [Documentation]    Este teste valida o cadastro com sucesso
    Log    Iniciando o teste de cadastro
    # Aqui você incluirá os passos do seu teste, como preencher um formulário e verificar uma mensagem de sucesso
    Log    Cadastro realizado com sucesso