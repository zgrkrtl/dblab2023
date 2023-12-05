use company;

select count(CustomerID), country
from customers
group by country
order by count(CustomerID) desc;

create view usa_customers (customerid, customername, contactname) as
select customerid,customername, contactname 
from customers
where country = "USA";

select * from usa_customers join orders on usa_customers.customerid=orders.CustomerID;

create view products_below_avg (productid, productname, price) as
select productid, productname, price
from products
where price < (select avg(price) from products);

select * from products_below_avg;

drop view usa_customers;

