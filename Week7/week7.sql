use company;
select * from customers;

insert into customers (customername,contactname,address,city,postalcode,country)
values ("Erdem","Erdem","","Mugla","48000","Turkiye");

update customers
set postalcode = "48005"
where customerID = 92;

delete from customers
where customername = "Erdem";