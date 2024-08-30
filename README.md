# Modelo relacional para la tienda del colegio

## Integrantes/Autor 
Nicolle villa alvarez 
Ana Bedoya Cano
10C

## Producto(product)
        product_id(PK): identificador unico del producto Llave primaria (Numero) (not null)
    product_name: Nombre del producto (texto)
    product_price: precio del producto (numero)
    image_url: URL de la imagen del producto (alfanumerico)
    expiration_date: Fecha de vencimiento del producto (alfanumero) 

## Factura(bill)
        bill_id(PK): identificador unico de la factura (Numero) (not null)
    bill_date: fecha en la que se genera la factura (alfanumerico)
    bill_total: total a pagar por la compra (numero)
    money_paid: Monto q el estudiante paga (numero)
    money_back: monto que se devuelve al estudiante (numero)
   

## Facturas_productos (product_bill)
        product_bill_id(PK) identificador unico de la relacion entre factura y producto (numero)
    bill_id(FK): identificador de la factura (numero)
    product_id(FK): idnetificador del producto(numero)
    product_amount: cantidad del producto comprada (numero)
    product_bill_subtotal: Precio total del producto en la compra (precio unitario*cantidad) (numero)

## Ingresos (income)
        income_id (PK): identificador unico del registro de ingresos/egresos (numero) (not null)
    income_date: fecha del ingreso o egreso (alfanumerico)
    income_type: tipo de transaccion (ingreso o egreso) (texto)
    income_amount: Monto del ingreso o egreso (numero)
    income_description: Descripcion del ingreso o egreso (Texto)

## Pedido (order)
        order_id(PK):identificador unico del pedido (numero)
    date_order: fecha en la que se realiza el pedido (alfanumerico)
    date_order_delivery: fecha en la que se espera la entrega del pedido (alfanumerico)
    order_total:total a pagar por el pedido (numero)
    order_status: estado del pedido (pediente, recibido) (texto)

## Pedidos productos (product_order)
        product_order_id(PK): identificador unico de la relacion (numero)
    order_id (FK):identificador del pedido (numero)
    product_id (FK) identificador del pedido (numero)
    product_order_amount: Cantidad del producto pedida (numero)
    price_unit: precio unitario del producto pedido (numero)

## Inventario (inventory)
        inventory_id(PK):identificador unico del registro de inventario (numero)
    product_id(FK) identificador del producto (numero)
    amount_available: Cantidad de producto disponible en el inventario (numero)
    date_income: fecha en la que el producto ingreso al inventario (numero)

## Relaciones
- Product a product_bill : Relación de uno a muchos. Un producto puede aparecer en muchas facturas.
- bill a product_bill: Relación de uno a muchos. Una factura puede tener muchos productos.
- Product a Inventory: Relación de uno a uno. Cada producto tiene una única entrada en el inventario.
- order a Product_order: Relación de uno a muchos. Un pedido puede tener muchos productos.
- Product a product_order: Relación de uno a muchos. Un producto puede aparecer en muchos pedidos.
- Incomes no tiene relaciones directas con otras tablas en este modelo, pero está asociado indirectamente con las operaciones de la tienda y las transacciones registradas en Facturas y Pedidos.
        
