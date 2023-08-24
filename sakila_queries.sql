/*Specify which columns to get*/
SELECT
    c.first_name,
    c.last_name,
    c.email,
    a.address,
    ct.city
    
/* From which table...*/
FROM customer c

/*Match items where customer's address id matches in the address table*/
JOIN address a ON c.address_id = a.address_id

/*Take the resulting table above then further filter it
	by matching city ids in address with city ids in city table*/
JOIN city ct ON a.city_id = ct.city_id
WHERE ct.city_id = 312;
