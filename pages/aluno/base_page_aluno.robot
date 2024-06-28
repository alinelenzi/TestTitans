*** Settings ***
Library    SeleniumLibrary
Library    DateTime

# Resource    login_aluno_page.robot

*** Variables ***
${timeout}    5000ms
${url}        https://testando.eveclass.com/pt/auth/entrar
${browser}    Chrome
${date}

*** Keywords ***
Abrir navegador
    Register Keyword To Run On Failure    Tirar Screenshot
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10000ms
    Wait Until Element Is Visible    css=    ${timeout}

Fechar navegador
    Sleep    500ms
    Close Browser

Realizar Logout
    Click Button    css=
    Wait Until Element Is Visible    css=
    Click Link    css=   
    Wait Until Element Contains    css=    Advanced Tests - Teste

Obter Data e hora
    ${date} =    Get Current Date
    ${date} =    Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S
    ${date}    Set Global Variable    ${date}

Tirar Screenshot    
    [Arguments]    ${screenshot_name}    
    Capture Page Screenshot    screenshots/eveclassTestandoAluno/${date}/${TEST_NAME}/${screenshot_name}.jpg