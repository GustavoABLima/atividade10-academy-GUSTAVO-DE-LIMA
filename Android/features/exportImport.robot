*** Settings ***

Resource    ../../base.robot
Resource    ../pages/exportImport.robot

Test Setup      Abrir App
Test Teardown   Teardown

*** Test Cases ***

Exportação de dados
    Dado que o usuario deseja fazer exportação
    Quando o usuario gerar uma exportação
    Então o sistema deve prasentar uma mensagem de sucesso

Importação de dados
    Dado que o usuario deseja fazer importação
    Quando o usuario selecionar o arquivo
    E ele aceitar a importação
    Então o sistema deve prasentar uma mensagem de sucesso