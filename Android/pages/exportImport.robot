*** Settings ***

Resource   ../../base.robot
Library    AppiumLibrary

*** Variables ***

${MENU}            id=${PREFIXO}/Button3
${EXPORTAR}        id=${PREFIXO}/btn_exportar
${GERAR}           id=${PREFIXO}/btn_gerar
${IMPORTAR}        id=${PREFIXO}/btn_importar
${RESTAURAR_PDT}   id=${PREFIXO}/btn_produtos
${ENTRADA_PDT}     id=${PREFIXO}/btn_entradas
${SAIDA_PDT}       id=${PREFIXO}/btn_saidas
${PDT_GRUPO}       id=${PREFIXO}/btn_grupos
${ESTOQUE}         xpath=//android.widget.TextView[contains(@text, "Estoque")]
${ARQUIVO}         xpath=//android.widget.TextView[contains(@text, "group.csv")]
${ACEITAR}         id=android:id/button1
${MENSAGEM}        id=android:id/parentPanel
${SUCESSO}         id=android:id/message

*** Keywords ***

Dado que o usuario deseja fazer exportação
    Wait Until Element Is Visible       ${MENU}
    Click Element                       ${MENU}
    Wait Until Element Is Visible       ${EXPORTAR}
    Click Element                       ${EXPORTAR}

Quando o usuario gerar uma exportação
    Wait Until Element Is Visible       ${GERAR}
    Click Element                       ${GERAR}

Então o sistema deve prasentar uma mensagem de sucesso
    Wait Until Element Is Visible       ${MENSAGEM}
    Page Should Contain Element         ${SUCESSO}
    Click Element                       ${ACEITAR}
    Press Keycode                       4

Dado que o usuario deseja fazer importação
    Wait Until Element Is Visible       ${MENU}
    Click Element                       ${MENU}
    Wait Until Element Is Visible       ${IMPORTAR}
    Click Element                       ${IMPORTAR}

Quando o usuario selecionar o arquivo
    Wait Until Element Is Visible       ${PDT_GRUPO}
    Click Element                       ${PDT_GRUPO}
    Wait Until Element Is Visible       ${ESTOQUE}
    Click Element                       ${ESTOQUE}
    Wait Until Element Is Visible       ${ARQUIVO}
    Click Element                       ${ARQUIVO}

E ele aceitar a importação
    Wait Until Element Is Visible       ${ACEITAR}
    Click Element                       ${ACEITAR}
