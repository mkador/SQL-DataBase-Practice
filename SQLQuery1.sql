---1) Who is the senior most employee based on job title?
SELECT * FROM employee
ORDER BY levels 

--2. Which countries have the most Invoices?
select count(*) as c,billing_country
from invoice
group by billing_country
order by c desc;

--3. What are top 3 values of total invoice?
select total from invoice
order by total desc

--4. Which city has the best customers? We would like to throw a promotional Music 
--Festival in the city we made the most money. Write a query that returns one city that 
--has the highest sum of invoice totals. Return both the city name & sum of all invoice totals

select sum(total) as invoice_total,billing_city from invoice
group by billing_city
order by invoice_total desc

--5. Who is the best customer? The customer who has spent the most money will be 
--declared the best customer. Write a query that returns the person who has spent the most money

select customer.customer_id,sum(invoice.total) as Total
from customer
join invoice ON customer.customer_id = invoice.invoice_id
group by customer.customer_id
order by Total desc

---------------------------Question Set 2 – Moderate----------------------

---1. Write query to return the email, first name, last name, & Genre of all Rock Music 
---listeners. Return your list ordered alphabetically by email starting with A
