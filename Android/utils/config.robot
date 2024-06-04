*** Settings ***

Resource   ../../base.robot

*** Variables ***
${PREFIXO}                    br.com.pztec.estoque:id
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_VERSION}    11
${APP_PACKAGE}                br.com.pztec.estoque
${APP_ACTIVITY}               Inicio
${ANDROID_PLATFORM_NAME}      Android


*** Keywords ***
Abrir App
    Open Application     http://127.0.0.1:4723/wd/hub    automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}    
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}     appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    autoGrantPermissions=${true}

Teardown
    Close All Applications
