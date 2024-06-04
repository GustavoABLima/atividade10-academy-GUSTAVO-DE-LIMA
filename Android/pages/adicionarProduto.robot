*** Settings ***

Resource    ../../base.robot
Library     AppiumLibrary

*** Variables ***
${NOVO}            id=${PREFIXO}/Button1
${CODIGO}          id=${PREFIXO}/txt_codigo
${DESCRICAO}       id=${PREFIXO}/txt_descricao
${UNIDADE}         id=${PREFIXO}/txt_unidade
${QUANTIDADE}      id=${PREFIXO}/txt_quantidade
${VALOR}           id=${PREFIXO}/txt_valunit
${LOTE}            id=${PREFIXO}/txt_lote
${SALVAR}          id=${PREFIXO}/btn_gravar_assunto


@{produtos}    
...    COD = 666    
...    DES = The Number Of The Beast    
...    QTD = 10    
...    VLR = 30.00

*** Keywords ***

Dado que o usuario deseja adicionar um novo produto
    Wait Until Element Is Visible    ${NOVO}
    Click Element                    ${NOVO}
Quando o usuario informa os dados do novo produto
    Wait Until Element Is Visible    ${CODIGO}
    Input Text                       ${CODIGO}       ${666}
    Input Text                       ${DESCRICAO}    The Number Of The Beast
    Input Text                       ${UNIDADE}      UN
    Input Text                       ${QUANTIDADE}   ${10}
    Input Text                       ${VALOR}        ${30.00}
    Input Text                       ${LOTE}         ${252344}

Então o sistema salva o novo produto
    Click Element                    ${SALVAR}

Dado que o usuario deseja adicionar um produto
    Wait Until Element Is Visible    ${NOVO}
    Click Element                    ${NOVO}

Quando o usuario informa o template do novo produto
    [Arguments]    @{produtos}
    FOR    ${produto}    IN    @{produtos}    

        Wait Until Element Is Visible    ${CODIGO}
        Input Text                       ${CODIGO}           ${produto}
        Input Text                       ${DESCRICAO}        ${produto}
        Input Text                       ${QUANTIDADE}       ${produto}
        Input Text                       ${VALOR}            ${produto}

    END
