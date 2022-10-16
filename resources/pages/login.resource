*** Settings ***
Documentation        Login Page
Library              Browser

*** Keywords ***
Go To Page Login

    New Page           https://trade-sticker-dev.vercel.app/

Submite Credentials
    [Arguments]               ${email}        ${password}
    Fill Text                 css=input[name=email]        ${email}
    Fill Text                 css=input[name=password]     ${password}
    Click                     css=button >> text=Entrar

Remember
    Check Checkbox            text=Lembrar meus dados

Toast Message Should Be
    [Arguments]          ${expect_message}

    #  Aqui pega a estrategia de localizador
    ${locator}         Set Variable    css=.Toastify__toast-body >> text=${expect_message}
    # Aqui como se trata de um toaster, ele espera o elemento que passamos a estratégia ficar visivel e com 1s de espera
    Wait For Elements State    ${locator}    visible    3