* Settings *

Resource            ${EXECDIR}/resources/base.robot

Test Setup          Iniciar Sessão
Test Teardown       Take Screenshot

* Test Cases *

* Test Cases *
Deve Adicionar um novo pedido em dinheiro
    [tags]      temp

    ${order_json}        Get JSON        order.json

    Ir Para Restaurantes
    Choose Restaurant       ${order_json}

    FOR  ${product}     IN      @{order_json["products"]}
        Add To Cart             ${product["name"]}
        Should Add To Cart      ${product["name"]}
    END

    Go Checkout
    Fill Data Customer          ${order_json["customer"]}
    Select Payment Option       ${order_json["payment"]}
    Pay Order
    Order Should Be Completed


