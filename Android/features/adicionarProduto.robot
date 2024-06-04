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

Adicionar Vários Produtos
    Dado que o usuario deseja adicionar vários produtos
    Quando o usuario informa os dados dos novos produtos    @{produtos}
    Então o sistema salva os novos produtos
