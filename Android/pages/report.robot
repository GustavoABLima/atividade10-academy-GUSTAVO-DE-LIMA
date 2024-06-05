*** Settings ***

Resource   ../../base.robot
Library    AppiumLibrary

*** Variables ***

${MENU}            id=${PREFIXO}/Button3
${REPORT_BTN}      id=${PREFIXO}/btn_relatorios
${REPORT_INV}      id=${PREFIXO}/inventario
${GERAR}           id=${PREFIXO}/btn_gerar
${ARQUIVO_GERADO}  id=${PREFIXO}/datafile
${ABRIR_BTN}       id=${PREFIXO}/btn_abrir
${PDF}             xpath=//android.view.ViewGroup[contains(@content-desc, "Report inventory")]

*** Keywords ***

Dado que o usuario deseja gerar um aquivo PDF
    Wait Until Element Is Visible       ${MENU}
    Click Element                       ${MENU}
    Wait Until Element Is Visible       ${REPORT_BTN}
    Click Element                       ${REPORT_BTN}

Quando o usuario clicar no botão REPORT INVENTORY
    Wait Until Element Is Visible       ${REPORT_INV}
    Click Element                       ${REPORT_INV}

E em PDF GENERATOR
    Wait Until Element Is Visible       ${GERAR}
    Click Element                       ${GERAR}

Então o sistema deve gerar um arquivo PDF
    Wait Until Element Is Visible       ${ARQUIVO_GERADO}
    Page Should Contain Element         ${ARQUIVO_GERADO}
    Press Keycode                       4

Dado que o usuario deseja abrir o arquivo PDF
    Wait Until Element Is Visible       ${MENU}
    Click Element                       ${MENU}
    Wait Until Element Is Visible       ${REPORT_BTN}
    Click Element                       ${REPORT_BTN}

E clicar no botão PDF VIEWER
    Wait Until Element Is Visible       ${ABRIR_BTN}
    Click Element                       ${ABRIR_BTN}

Então o sistema deve abrir o arquivo PDF
    Wait Until Element Is Visible       ${PDF}
    Page Should Contain Element         ${PDF}
    Press Keycode                       4
    Press Keycode                       4