/* 
April Dawn Kester
akester@ucsc.edu
CMPS 182 - Lab 2
script1.sql
Create tables and define attributes
*/

drop schema public cascade;
create schema public;

/*for testing
drop table dv_customer;
drop table dv_address;
drop table dv_film;
drop table cb_customers; 
drop table cb_books;
drop table cb_authors;
drop table mg_customers;
drop type mpaa_rating;
drop sequence mg_customers_seq cascade;
*/

/*tables for DowntownVideoDB*/
create table dv_customer (
	customer_id integer,
	first_name character varying(50),
	last_name character varying(50),
	email character varying(50),
	address_id integer,
	active boolean);

create table dv_address (
	address_id integer,
	address character varying(50),
	address2 character varying(50),
	district character varying(50),
	city_id integer,
	postal_code character varying(50),
	phone character varying(50));

create type mpaa_rating as enum ($$G$$, $$PG$$, $$PG-13$$, $$R$$, $$NC-17$$);

create table dv_film (
	film_id integer,
	title character varying(50),
	description text,
	length smallint,
	rating mpaa_rating);

/*tables for CityBooksDB*/
create table cb_customers (
	last_name character varying(50),
	first_name character varying(50));

create table cb_books (
	title character varying(50),
	author_id integer);

create table cb_authors (
	author_id integer,
	first_name character varying(50),
	last_name character varying(50));

/*merged tables*/
create table mg_customers (
	customer_id integer,
	first_name character varying(50),
	last_name character varying(50),
	email character varying(50),
	address_id integer,
	active boolean);


  