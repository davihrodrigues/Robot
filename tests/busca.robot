* Settings *

Resource         ${EXECDIR}/resources/base.robot

Test Setup          Iniciar Sessão
Test Teardown       Take Screenshot



* Test Cases *
Buscar um unico restaurante
    Ir Para Restaurantes
    Procurar Por                    Debuger
    Restaurante Should Be Visible   DEBUGER KING
    Restaurant Count Should Be      1


Deve buscar por categoria
    Ir Para Restaurantes  
    Procurar Por                    Cafe
    Restaurante Should Be Visible   STARBUGS COFFEE

Deve buscar todos os restaurantes
    Ir Para Restaurantes
    Procurar Por                a
    Restaurant Count Should Be  5





