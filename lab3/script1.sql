/* 
April Dawn Kester
akester@ucsc.edu
CMPS 182 - Lab 3
script1.sql
Primary key constraints 
*/

/*Only one primary key allowed per table*/
alter table mg_customers add primary key (customer_id);
alter table dv_address add primary key (address_id);
alter table dv_film add primary key (film_id);
alter table cb_books add primary key (title, author_id);
alter table cb_authors add primary key (author_id);

