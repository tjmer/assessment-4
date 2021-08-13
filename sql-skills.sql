INSERT INTO artist(name)
VALUES ('Sophie');

INSERT INTO artist(name)
VALUES ('Rolendar');

INSERT INTO artist(name)
VALUES ('Rovverto');

SELECT name FROM ARTIST
ORDER BY name ASC limit 5;

SELECT first_name "First", last_name "Last" FROM employee
WHERE city = 'Calgary';

SELECT first_name "First", last_name "Last" FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(total) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT invoice_id FROM invoice_line
WHERE quantity * unit_price < 5;

SELECT COUNT(invoice_id) FROM invoice_line
WHERE quantity * unit_price > 5;

SELECT SUM(invoice_id) FROM invoice_line;

SELECT * FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE unit_price > .99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON e.employee_id = c.support_rep_id;

SELECT a.title, ar.name FROM album a
JOIN artist ar ON ar.artist_id = a.artist_id;