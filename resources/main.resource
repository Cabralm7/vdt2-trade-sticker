*** Settings ***
Documentation        Arquivo principa do projeto
Library              Browser

Resource            ./pages/dash.resource
Resource            ./pages/login.resource


*** Keywords ***

Do login
    Go To Page Login
    Submite Credentials    papito@gmail.com     vaibrasil
    User Logged In

Start Test
    New Browser            headless=False

Finish Test
    Sleep                  1s
    Take Screenshot