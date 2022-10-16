*** Settings ***
Documentation        LoginSticker
Library              Browser

Resource             ../resources/main.resource
                    ## Ou execDir pra sair da pa

Test Setup            Start Test
Test Teardown         Finish Test

*** Test Cases ***
Login in Sticker (Happy way)
    [Tags]                 valid_login

    Go To Page Login
    Submite Credentials    papito@gmail.com    vaibrasil
    User Logged In
    

Can't login in Sticker with wrong password (Sad way)
    [Tags]                     inv_password

    Go To Page Login
    Submite Credentials        papito@gmail.com    abc123
    Toast Message Should Be    Credenciais inválidas, tente novamente!


Can't login in Sticker with wrong email (Sad way)
    [Tags]                     inv_login

    Go To Page Login
    Submite Credentials        papitoErrado@gmail.com    vaibrasil
    Toast Message Should Be    Credenciais inválidas, tente novamente!


Try login with any credentials (Sad way)
    [Tags]                    any_credentials

    Go To Page Login
    Button Entry
    Toast Message Should Be    Por favor, informe suas credenciais!


Click in remember my credentials
    [Tags]                    remember

    Go To Page Login
    Remember