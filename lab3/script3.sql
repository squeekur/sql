/* 
April Dawn Kester
akester@ucsc.edu
CMPS 182 - Lab 3
script3.sql
General constraints 
*/

/*positive_length*/
alter table dv_film add constraint positive_length check (length>0);


/*first*/
select max(address_id)+1 from dv_address;

select customer_id from mg_customers where address_id is null;

update mg_customers set address_id = 606
where ctid in (select ctid from mg_customers
where address_id is null limit 1);

update mg_customers set address_id = 607
where ctid in (select ctid from mg_customers
where address_id is null limit 1);

update mg_customers set address_id = 608
where ctid in (select ctid from mg_customers
where address_id is null limit 1);

update mg_customers set address_id = 609
where ctid in (select ctid from mg_customers
where address_id is null limit 1);

update mg_customers set address_id = 610
where ctid in (select ctid from mg_customers
where address_id is null limit 1);

update mg_customers set address_id = 611
where ctid in (select ctid from mg_customers
where address_id is null limit 1);

update mg_customers set address_id = 612
where ctid in (select ctid from mg_customers
where address_id is null limit 1);

update mg_customers set address_id = 613
where ctid in (select ctid from mg_customers
where address_id is null limit 1);

insert into dv_address (address_id, address)
values (606, $$unknown$$);

insert into dv_address (address_id, address)
values (607, $$unknown$$);

insert into dv_address (address_id, address)
values (608, $$unknown$$);

insert into dv_address (address_id, address)
values (609, $$unknown$$);

insert into dv_address (address_id, address)
values (610, $$unknown$$);

insert into dv_address (address_id, address)
values (611, $$unknown$$);

insert into dv_address (address_id, address)
values (612, $$unknown$$);

insert into dv_address (address_id, address)
values (613, $$unknown$$);


/*create sequence for address_id*/
create sequence dv_address_seq start 606;

/*set up next value in address_id*/
alter table dv_address
alter column address_id
set default nextval($$dv_address_seq$$);


/*mg_customers no null address_id*/
alter table mg_customers alter column address_id set not null;

/*dv_address no empty address*/
alter table dv_address alter column address set not null;

