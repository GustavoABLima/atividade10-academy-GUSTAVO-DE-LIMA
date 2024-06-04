*** Settings ***
Resource   ../../base.robot
Resource    ../pages/adicionarProduto.robot

Test Setup      Abrir App
Test Teardown   Teardown

*** Test Cases ***
Adicionar Produto
    Dado que o usuario deseja adicionar um novo produto
    Quando o usuario informa os dados do novo produto
    Então o sistema salva o novo produto