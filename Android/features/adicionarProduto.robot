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

Adicionar Um Produto Com Template
    Dado que o usuario deseja adicionar um produto
    Quando o usuario informa o template do novo produto    @{produtos}
    Então o sistema salva o novo produto
