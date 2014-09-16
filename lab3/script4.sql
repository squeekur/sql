/* 
April Dawn Kester
akester@ucsc.edu
CMPS 182 - Lab 3
script4.sql
Testing
*/

/* Test #1 - INSERT command that meets constraint */
/* 3.1 Primary Keys */
insert into dv_address (address_id, address)
values (752, $$unknown$$);
insert into mg_customers (customer_id, address_id)
values (752, 752);
insert into dv_film (film_id)
values (1752);
insert into cb_authors (author_id)
values (1762);
insert into cb_books (title, author_id)
values ($$Test$$, 1762);

/* 3.2 Foreign Keys */
insert into dv_address (address_id, address)
values (782, $$unknown$$);
insert into mg_customers (customer_id, address_id)
values (782, 782);
insert into cb_authors (author_id)
values (1792);
insert into cb_books (title, author_id)
values ($$Test$$, 1792);

/* 3.3 General Constraints */
insert into dv_film (film_id, length)
values (4562, 250);
insert into dv_address (address_id, address)
values (892, $$unknown$$);
insert into mg_customers (customer_id, address_id)
values (892, 892);
insert into dv_address (address_id, address)
values (893, $$unknown$$);

/*—————————————————————————————————————————————*/

/* Test #2 - UPDATE command that meets constraint */
/* 3.1 Primary Keys */
insert into dv_address (address_id, address)
values (753, $$unknown$$);
update mg_customers set address_id = 753
where address_id = 752;

update dv_address set address_id = 754
where address_id = 752;

update dv_film set film_id = 1753
where film_id = 1752;

update cb_authors set author_id = 1763
where author_id = 1762;

update cb_books set author_id = 1763
where title = $$Test$$ AND author_id = 1792;

/* 3.3 General Constraints */
update dv_film (film_id, length)
values (4562, 250);
update dv_address (address_id, address)
values (892, $$unknown$$);
update mg_customers (customer_id, address_id)
values (892, 892);
insert into dv_address (address_id, address)
values (893, $$unknown$$);

/*—————————————————————————————————————————————*/

/* Test #3 - INSERT command that violates constraint */
/* 3.1 Primary Keys */
insert into dv_address (address_id, address)
values (130, $$unknown$$);
insert into mg_customers (customer_id, address_id)
values (130, 752);
insert into dv_film (film_id)
values (130);
insert into cb_authors (author_id)
values (76);
insert into cb_books (title, author_id)
values ($$Torque Bound$$, 76);

/* 3.2 Foreign Keys */
insert into dv_address (address_id)
values (782);
insert into mg_customers (customer_id)
values (782);
insert into cb_books (title, author_id)
values ($$Torque Bound$$, 76);
insert into cb_authors (author_id)
values (76);

/* 3.3 General Constraints */
insert into dv_film (film_id, length)
values (4562, -250);
insert into dv_address (address_id)
values (892);
insert into mg_customers (customer_id)
values (892);
insert into dv_address (address_id)
values (893);

/*—————————————————————————————————————————————*/

/* Test #4 - UPDATE command that violates constraint */
/* 3.1 Primary Keys */
update mg_customers set address_id = 753
where address_id = 752;

update dv_address set address_id = 753
where address_id = 752;

update dv_film set film_id = 130
where film_id = 1753;

update cb_authors set author_id = 76
where author_id = 1763;

update cb_books set author_id = 58, title = $$Titans Jerk$$
where title = $$Theory Mermaid$$ AND author_id = 15;


/* 3.3 General Constraints */
positive_length
mg_customers no null address_id
dv_address no empty address 


