 #Obten el código de producto, nombre de producto y descripción de todos los productos.
select productCode,productName,productDescription from products;
#Obten el número de orden, estado y costo total de cada orden.
select orders.orderNumber,status,sum(quantityOrdered*priceEach) as precioorden  from orders right join orderdetails on orders.orderNumber=orderdetails.orderNumber group by orders.orderNumber;
#Obten el número de orden, fecha de orden, línea de orden, nombre del producto, cantidad ordenada y precio de cada pieza que muestre los detalles de cada orden.
select orders.orderNumber,orderDate,orderLineNumber,productName,quantityOrdered,priceEach from orders 
right join orderdetails on orders.orderNumber=orderdetails.orderNumber 
left join products on orderdetails.productCode=products.productCode ;
#Obtén el número de orden, nombre del producto, el precio sugerido de fábrica (msrp) y precio de cada pieza.
select orderNumber,productName,MSRP,priceEach from  orderdetails right join products on orderdetails.productCode=products.productCode;
#Obtén el número de cliente, nombre de cliente, número de orden y estado de cada cliente.
select orders.customerNumber,customerName,orderNumber,city,state from orders left join customers on orders.customerNumber=customers.customerNumber;
#Obtén los clientes que no tienen una orden asociada.
select customers.customerNumber,customerName,orderNumber,city,state from customers left join orders on orders.customerNumber=customers.customerNumber where orderNumber is null;
#Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque y total, es decir, los clientes asociados a cada empleado.
select lastName,firstName,customerName,checkNumber,amount FROM employees 
left join customers on employees.employeeNumber=customers.salesRepEmployeeNumber 
join payments on customers.customerNumber=payments.customerNumber ;
CREATE VIEW `orden` AS select orders.orderNumber,status,sum(quantityOrdered*priceEach) as precioorden  from orders right join orderdetails on orders.orderNumber=orderdetails.orderNumber group by orders.orderNumber;