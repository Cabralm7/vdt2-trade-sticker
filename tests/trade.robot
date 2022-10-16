*** Settings ***
Documentation        Teste de negociação de figurinhas da copa
Library              Browser

Resource             ../resources/main.resource

Test Setup            Start Test
Test Teardown         Finish Test

*** Test Cases ***

Can negociation a sticker of Neymar Legend
    [Tags]                 njLegend
    Do login

    Search User            legend
    Select Player          Neymar Jr
    Get In Touch
    Whatsapp Sticket Message    Neymar Jr