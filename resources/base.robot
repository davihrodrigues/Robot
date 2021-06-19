* Settings *
Documentation       Arquivo Base do projeto (Tudo começa aqui)

Library     Browser
Library     OperatingSystem

Resource    actions/search.robot
Resource    actions/cart.robot
Resource    actions/order.robot

* Variables *
${DEFAULT_TIMEOUT}      10

* Keywords *
Iniciar Sessão
    New Browser         chromium        False
    New Page            http://parodifood.qaninja.academy/
    Get Text            css=span        contains        Nunca foi tão engraçado pedir comida


Get JSON
    [Arguments]         ${file_name}

    ${file}         Get File            ${EXECDIR}/resources/fixtures/${file_name}
    ${super_var}    Evaluate            json.loads($file)           json

    [return]        ${super_var}
    