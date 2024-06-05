*** Settings ***

Resource    ../../base.robot
Library     AppiumLibrary

*** Variables ***

${MENU}            id=${PREFIXO}/Button3
${BACKUP}          id=${PREFIXO}/btn_backup
${GERAR_BACKUP}    id=${PREFIXO}/btn_gerar
${ARQUIVO_GERADO}  id=${PREFIXO}/datafile
${ENVIAR}          id=${PREFIXO}/btn_send
${RESTORE}         id=${PREFIXO}/btn_restore
${PRC_ARQUIVO}     id=${PREFIXO}/btn_procurar
${ESTOQUE}         xpath=//android.widget.TextView[contains(@text, "Estoque")]
${ARQUIVO}         xpath=//android.widget.TextView[contains(@resource-id, "android:id/text1") and contains (@text, "APP_20240605.bkp")]
${ACEITAR}         id=android:id/button1
${MENSAGEM}        id=android:id/parentPanel
${SUCESSO}         id=android:id/message

*** Keywords ***

Dado que o usuario deseja fazer backup
    Wait Until Element Is Visible       ${MENU}
    Click Element                       ${MENU}
    Wait Until Element Is Visible       ${BACKUP}
    Click Element                       ${BACKUP}

Quando o usuario deseja gerar backup
    Wait Until Element Is Visible       ${GERAR_BACKUP}
    Click Element                       ${GERAR_BACKUP}

Então uma mensagem de sucesso deve ser exibida
    Wait Until Element Is Visible    ${MENSAGEM}
    Page Should Contain Element      ${MENSAGEM}    ${SUCESSO}
    Click Element                    ${ACEITAR}

E um backup deve ser gerado
    Wait Until Element Is Visible       ${ARQUIVO_GERADO}
    Page Should Contain Element         ${ARQUIVO_GERADO}
    Press Keycode                       4

Dado que o usuario deseja fazer restore
    Wait Until Element Is Visible       ${MENU}
    Click Element                       ${MENU}
    Wait Until Element Is Visible       ${RESTORE}
    Click Element                       ${RESTORE}

Quando o usuario selecionar o arquivo
    Wait Until Element Is Visible       ${PRC_ARQUIVO}
    Click Element                       ${PRC_ARQUIVO}
    Wait Until Element Is Visible       ${ESTOQUE}
    Click Element                       ${ESTOQUE}
    Wait Until Element Is Visible       ${ARQUIVO}
    Click Element                       ${ARQUIVO}

E ele aceitar a restauração
    Wait Until Element Is Visible       ${ACEITAR}
    Click Element                       ${ACEITAR}
