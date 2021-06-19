* Settings *
Documentation       Ações da funcionalidade de busca de restaurantes


* Variables *
${DIV_BOX_RESTAURANT}       css=div[class="place-info-box"][style="opacity: 1;"]


* Keywords *
Ir Para Restaurantes
    Click           text=Estou com fome!
    Get Text        css=h1 strong      contains        Ta na hora de matar a fome!

Choose Restaurant
    [Arguments]         ${super_var}

    Click               text=${super_var["restaurant"]}

    Wait For Elements State     css=#detail     visible     ${DEFAULT_TIMEOUT}
    Get Text    css=#detail     contains        ${super_var["desc"]}


Procurar Por
    [Arguments]     ${value}
    Click           css=.search-link
    Fill Text       css=div[formcontrolname="searchControl"]      ${value}

Restaurante Should Be Visible
    [Arguments]     ${name}
    Wait For Elements State     ${DIV_BOX_RESTAURANT}        visible          ${DEFAULT_TIMEOUT}
    Get Text                    ${DIV_BOX_RESTAURANT}        contains         ${name}

Restaurant Count Should Be
    [Arguments]     ${qtd}

    Wait For Elements State  ${DIV_BOX_RESTAURANT}     visible      ${DEFAULT_TIMEOUT}
    Get Element Count        ${DIV_BOX_RESTAURANT}     equal        ${qtd}
    





