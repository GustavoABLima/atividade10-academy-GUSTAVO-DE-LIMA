*** Settings ***

Resource    ../../base.robot
Resource    ../pages/report.robot

Test Setup      Abrir App
Test Teardown   Teardown

*** Test Cases ***

Criar um relatório de inventário
    Dado que o usuario deseja gerar um aquivo PDF
    Quando o usuario clicar no botão REPORT INVENTORY
    E em PDF GENERATOR
    Então o sistema deve gerar um arquivo PDF

Visualizar um relatório de inventário
    Dado que o usuario deseja abrir o arquivo PDF
    Quando o usuario clicar no botão REPORT INVENTORY
    E clicar no botão PDF VIEWER
    Então o sistema deve abrir o arquivo PDF
