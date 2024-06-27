*** Settings ***
Resource    ../../../pages/admin/base_page_admin.robot
Suite Setup    Obter Data e Hora
Test Setup    base_page_admin.Abrir navegador
Test Teardown    base_page_admin.Fechar navegador