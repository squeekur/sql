/* 
April Dawn Kester
akester@ucsc.edu
CMPS 182 - Lab 3
script2.sql
Foreign key constraints 
*/

alter table mg_customers
add constraint address_id_fkey
foreign key (address_id) references dv_address;

alter table cb_books
add constraint author_id_fkey
foreign key (author_id) references cb_authors;
