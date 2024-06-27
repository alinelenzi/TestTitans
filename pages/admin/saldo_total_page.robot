*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${btn_vendas}    id=SALES
${btn_meu_saldo}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.sale-overview div.overview div.overview-group:nth-child(1) div.overview-group-items a.widget.widget.widget-balance.undefined.undefined div.text > p.text-title
${total_sacado}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list section.card-infos-list div.card-infos-list-cards div.card-info-card.card-info-card-color-undefined.card-info-card-bg-undefined.has-tooltip:nth-child(1) > p.card-info-card-amount
${a_receber}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list section.card-infos-list div.card-infos-list-cards div.card-info-card.card-info-card-color-warning.card-info-card-bg-undefined.has-tooltip:nth-child(2) > p.card-info-card-amount
${pronto_saque}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list section.card-infos-list div.card-infos-list-cards div.card-info-card.card-info-card-color-success.card-info-card-bg-undefined.has-tooltip:nth-child(3) > p.card-info-card-amount
${saldo_total}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list section.card-infos-list div.card-infos-list-cards div.card-info-card.card-info-card-color-success.card-info-card-bg-success.has-tooltip:nth-child(4) > p.card-info-card-amount 

*** Keywords ***

Clicar em "Vendas"
    Click Button    ${btn_vendas} 

Clicar em "Meu saldo"
    Click Button    ${btn_meu_saldo}