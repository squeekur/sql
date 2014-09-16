/* 
April Dawn Kester
akester@ucsc.edu
CMPS 182 - Lab 2
script2.sql
Load data
*/


/*import data for DowntownVideoDB*/
\copy dv_customer from dv_customer.data
\copy dv_address from dv_address.data
\copy dv_film from dv_film.data

/*import data for CityBooksDB*/
\copy cb_customers from cb_customers.data
\copy cb_books from cb_books.data
\copy cb_authors from cb_authors.data

/*
for testing
\d dv_customer
\d dv_address
\d dv_film
\d cb_customers
\d cb_books
\d cb_authors

select count(a) from dv_customer a;
select count(a) from dv_address a;
select count(a) from dv_film a;
select count(a) from cb_customers a;
select count(a) from cb_books a;
select count(a) from cb_authors a;
select count(a) from cb_authors a;
select count(a) from mg_customers a;
*/






