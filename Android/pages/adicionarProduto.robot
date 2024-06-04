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
${VALIDADE}        id=${PREFIXO}/data
${ANTERIOR_MES}    id=Previous month
${PROXIMO_MES}     id=Next month
${SALVAR}          id=${PREFIXO}/btn_gravar_assunto


*** Keywords ***

Dado que o usuario deseja adicionar um novo produto
    Wait Until Element Is Visible    ${NOVO}
    Click Element                    ${NOVO}
Quando o usuario informa os dados do novo produto
    Wait Until Element Is Visible    ${CODIGO}
    Input Text                       ${CODIGO}       ${666}
    Input Text                       ${DESCRICAO}    The Number Of The Beast
    Input Text                       ${UNIDADE}      ${50}
    Input Text                       ${QUANTIDADE}   ${10}
    Input Text                       ${VALOR}        ${10.00}
    Input Text                       ${LOTE}         ${252344}
    Swipe                            500    1000    500    500
    Wait Until Element Is Visible    ${VALIDADE}
    Click Element                    ${VALIDADE}     
    Click Element                    ${ANTERIOR_MES}
Então o sistema salva o novo produto
    Click Element                    ${SALVAR}
