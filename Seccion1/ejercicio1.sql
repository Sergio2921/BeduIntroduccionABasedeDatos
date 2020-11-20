SELECT * FROM classicmodels.employees;
#Dentro de la tabla employees, obtén el apellido de todos los empleados.
select lastName as  apellidos from classicmodels.employees;
#Dentro de la tabla employees, obtén el apellido, nombre y puesto de todos los empleados.
select lastName as apellido,firstName as nombre, jobTitle as puesto from classicmodels.employees;
#Dentro de la tabla employees, obtén todos los datos de cada empleado.
SELECT * FROM classicmodels.employees;
#Dentro de la tabla employees, obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto Sales Rep.
select lastName as apellido,firstName as nombre, jobTitle as puesto from classicmodels.employees where jobTitle="Sales Rep";
#Dentro de la tabla employees, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto Sales Rep y código de oficina 1.
select  lastName as apellido,firstName as nombre, jobTitle as puesto,officeCode as codigoOficina from classicmodels.employees where jobTitle="Sales Rep" and officeCode=1;
#Dentro de la tabla employees, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto Sales Rep o código de oficina 1.
select  lastName as apellido,firstName as nombre, jobTitle as puesto,officeCode as codigoOficina from classicmodels.employees where jobTitle="Sales Rep" or officeCode=1;
#Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados que tenga código de oficina 1, 2 o 3.
select  lastName as apellido,firstName as nombre,officeCode as codigoOficina from classicmodels.employees where  officeCode in (1,2,3);
#Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a 5.
select  lastName as apellido,firstName as nombre,officeCode as codigoOficina from classicmodels.employees where  officeCode > 5;
#Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados cuyo cdigo de oficina sea menor o igual 4
select  lastName as apellido,firstName as nombre,officeCode as codigoOficina from classicmodels.employees where  officeCode <= 4;
#Dentro de la tabla customers, obtén el nombre, país y estado de todos los clientes cuyo país sea USA y cuyo estado sea CA.
SELECT contactFirstName as nombre,contactLastName as apellido,country as pais,state as estado  FROM classicmodels.customers where country="USA" and state="CA";
#Dentro de la tabla customers, obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea, USA, cuyo estado sea CA y cuyo límite de crédito sea mayor a 100000.
SELECT contactFirstName as nombre,contactLastName as apellido,country as pais,state as estado,creditLimit  FROM classicmodels.customers where (country="USA" or country="france") and creditLimit>100000 ;
#Dentro de la tabla offices, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en USA o France.
select officeCode,city,phone,country from classicmodels.offices where country="USA" or country="France";
#Dentro de la tabla offices, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en USA o France.
select officeCode,city,phone,country from classicmodels.offices where not(country="USA" or country="France");
#Dentro de la tabla orders, obtén el número de orden, número de cliente, estado y fecha de envío de todas las órdenes con el número 10165, 10287 o 10310.
select orderNumber,customerNumber,status,shippedDate  from classicmodels.orders where orderNumber in(10165,10287,10310);
#Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma ascendente.
select contactLastName,contactFirstName from  classicmodels.customers order by contactLastName asc;
#Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente.
select contactLastName,contactFirstName from  classicmodels.customers order by contactLastName desc;
#Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.
select contactLastName,contactFirstName from  classicmodels.customers order by contactLastName desc;
#Dentro de la tabla customers, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más alto (top 5).
select customerNumber,customerName,creditLimit from  classicmodels.customers order by creditLimit desc limit 5;
#Dentro de la tabla customers, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más bajo (top 5).
select customerNumber,customerName,creditLimit from  classicmodels.customers order by creditLimit asc limit 5;
