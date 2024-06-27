*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    ../../../.venv/lib/python3.11/site-packages/robot/libraries/XML.py

# Resource    consultar_venda_produtos_po.robot
# Resource    consultar_venda_assinaturas_po.robot
# Resource    consultar_saldo_total_po.robot
# Resource    login_admin_page.robot

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
    Wait Until Element Is Visible    css=overview-group-title.overview-group-title_primary    ${timeout}

Fechar navegador
    Sleep    500ms
    Close Browser

Realizar Logout
    Click Button    css=.dropdown-icon.fas.fa-chevron-down
    Wait Until Element Is Visible    css=.dropdown-item.dropdown_footer
    Click Link    css=.dropdown-item.dropdown_footer   
    Wait Until Element Contains    css=.span    Advanced Tests - Teste

Obter Data e hora
    ${date} =    Get Current Date
    ${date} =    Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S
    ${date}    Set Global Variable    ${date}

Tirar Screenshot    
    [Arguments]    ${screenshot_name}    
    Capture Page Screenshot    screenshots/eveclassTestando/${date}/${TEST_NAME}/${screenshot_name}.jpg