/* 
April Dawn Kester
akester@ucsc.edu
CMPS 182 - Lab 2
script3.sql
Merge data
*/

/*copy data from DowntownVideoDB into mg_customers table*/
insert into mg_customers (customer_id, first_name, last_name, email, address_id, active)
select dv_customer.customer_id, dv_customer.first_name, dv_customer.last_name, dv_customer.email, dv_customer.address_id, dv_customer.active
from dv_customer;

/*create sequence for customer_id*/
create sequence mg_customers_seq start 600;

alter table mg_customers
alter column customer_id
set default nextval($$mg_customers_seq$$);


/*copy data from CityBooksDB into mg_customers table - NO duplicate clients*/
insert into mg_customers (first_name, last_name)
select cb_customers.first_name, cb_customers.last_name
from cb_customers
except
select cb_customers.first_name, cb_customers.last_name
from cb_customers, dv_customer
where cb_customers.last_name = dv_customer.last_name AND cb_customers.first_name = 	dv_customer.first_name;




