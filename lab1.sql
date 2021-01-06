/* Q1
# The Chinook database contains all invoices from the beginning of 2009 till the end of 2013.
# The employees at Chinook store are interested in seeing all invoices that happened in 2013 only.
# Using the Invoice table, write a query that returns all the info of the invoices in 2013. */

SELECT *
FROM invoice
WHERE invoicedate BETWEEN '2012-12-31' AND '2014-1-1'
ORDER BY invoicedate;

/* Q2

The Chinook team decided to run a marketing campaign in Brazil, Canada, india, and Sweden.
Using the customer table, write a query that returns the first name, last name, and country
for all customers from the 4 countries. */

SELECT FirstName, LastName, Country
FROM customer
WHERE Country IN ('Brazil', 'Canada', 'India', 'Sweden')

/* Q3

Using the Track and Album tables, write a query that returns all the songs that start with
the letter 'A' and the composer field is not empty.
Your query should return the name of the song, the name of the composer, and the title of the album.
*/

SELECT t.name Name, t.composer Composer, a.title
FROM track t
JOIN album a
ON t.albumid = a.albumid
WHERE t.name LIKE 'A%' AND t.composer IS NOT NULL


/* Q4

The Chinook team would like to throw a promotional Music Festival for their top 10 cutomers
who have spent the most in a single invoice. Write a query that returns the first name,
last name, and invoice total for the top 10 invoices ordered by invoice total descending. */

SELECT c.firstname First, c.lastname Last, i.total Total
FROM customer c
JOIN invoice i
ON i.customerid = c.customerid
ORDER BY i.total DESC
LIMIT 10
