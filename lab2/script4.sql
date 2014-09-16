/* 
April Dawn Kester
akester@ucsc.edu
CMPS 182 - Lab 2
script4.sql
Run queries
*/

/*query #1 - returns first and last names of people who are customers
of DowntownVideo and CityBooks*/
select cb_customers.first_name, cb_customers.last_name
from cb_customers, dv_customer
where cb_customers.last_name = dv_customer.last_name AND cb_customers.first_name = 	dv_customer.first_name;

/*query #2 - returns phone #’s of people who are customers
of DowntownVideo and CityBooks*/
select phone
from dv_address, cb_customers, dv_customer
where cb_customers.last_name = dv_customer.last_name AND cb_customers.first_name = 	dv_customer.first_name AND dv_address.address_id = dv_customer.address_id;

/*query #3 - returns first and last names of customers who live in the 
district having the most customers*/
select first_name, last_name
from dv_address, dv_customer
where dv_address.address_id = dv_customer.address_id
AND district = (select district 
from dv_address 
group by district
order by count(*) desc
limit 1);

/*query #4 - returns rating and number of films for the least common rating*/
select rating, count(a)
from dv_film a
group by rating
order by count(*) asc
limit 1;

/*query #5 - returns */
select distinct first_name, last_name
from cb_authors, cb_books
where cb_authors.author_id = cb_books.author_id
AND cb_authors.author_id IN (select a.author_id
from cb_books a
group by a.author_id
order by count(*) desc
limit 10);





