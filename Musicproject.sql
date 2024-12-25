--Q1: Who is the senior most employee based on job title?

SELECT * FROM Employee
ORDER BY levels DESC 
LIMIT 1

--A1 : Madan mohan is the senior most employee.

--Q2: Which countries have the most Invoices?

SELECT COUNT(*) , billing_country 
FROM Invoice
GROUP BY billing_country
Order By count desc
limit 1

-- A1: USA have most invoices = 131

--Q3: What are top 3 values of total invoice?

SELECT total From invoice
ORDER By total DESC
Limit 3

-- A3: @3.75, 19.8, 19.8 are the top three values of total invoices.


--Q4: Which city has the best customers? We would like to throw apromotional Music Festival in the city we made the most money.
--Write a query that returns one city that has the highest sum of invoice totals.
--Return both the city name & sum of all invoice totals

SELECT SUM(total) as total_invoice , billing_city
FROM invoice
GROUP By billing_city
order by total_invoice desc
limit 1

--A4: Prague has best customer where promotional music festival can be organised. 

--Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
--Write a query that returns the person who has spent the most money.
select * FROm customer
SELECT customer.customer_id, first_name, last_name, SUM(invoice.total) as invoice_total
FROM customer
JOIN invoice on  customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
Order by invoice_total desc
LIMIT 1

--A5 : R Madhav is the customer who spent most on music and can be declared as best customer.

