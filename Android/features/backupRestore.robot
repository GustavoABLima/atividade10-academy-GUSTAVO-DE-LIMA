*** Settings ***

Resource    ../../base.robot
Resource    ../pages/backupRestore.robot

Test Setup      Abrir App
Test Teardown   Teardown

*** Test Cases ***

Fazer Backup
    Dado que o usuario deseja fazer backup
    Quando o usuario deseja gerar backup
    Então uma mensagem de sucesso deve ser exibida

Fazer Restore
    Dado que o usuario deseja fazer restore
    Quando o usuario selecionar o arquivo
    E ele aceitar a restauração
    Então uma mensagem de sucesso deve ser exibida