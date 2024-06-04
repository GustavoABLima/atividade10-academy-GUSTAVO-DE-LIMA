*** Settings ***

Resource    ../../base.robot

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
...    555 The Legend Of Zelda 10 150.00  
...    666 The Number Of The Beast 10 30.00
...    777 The Last Of Us 10 190.00
...    888 The Last Of Us 2 10 350.00

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

Dado que o usuario deseja adicionar vários produtos
    Wait Until Element Is Visible    ${NOVO}
    Click Element                    ${NOVO}

Quando o usuario informa os dados dos novos produtos
    [Arguments]    @{produtos}
    FOR    ${produto}    IN    @{produtos}
    
        Wait Until Element Is Visible    ${CODIGO}
        Input Text                       ${CODIGO}           ${produto[0]}
        Input Text                       ${DESCRICAO}        ${produto[1]}
        Input Text                       ${QUANTIDADE}       ${produto[2]}
        Input Text                       ${VALOR}            ${produto[3]}

    END
Então o sistema salva os novos produtos
    Click Element                    ${SALVAR}