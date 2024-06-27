*** Settings ***
Resource    ../../../pages/admin/base_page_admin.robot

*** Test Cases ***
Test Successful Login
    [Documentation]  Testa o login bem-sucedido com credenciais válidas.
    Open Login Page  ${URL}
    Tirar Screenshot   1_Login
    Click Começar Agora
    Click Support Action Button
    Enter Email  rodolfo_itg@yahoo.com.br
    Enter Password  TESTE
    Tirar Screenshot   2_Login preenchido
    Click Login Button
    Verify Login Successful
    Tirar Screenshot   3_Logado com sucesso
    Close All Browsers