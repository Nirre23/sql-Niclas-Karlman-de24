desc;
--film table

SELECT * from main.film f ;

desc table main.film 

SELECT
	count(DISTINCT title) as unique_movies
from
	main.film
	
SELECT * from main.film

SELECT DISTINCT rating from main.film f 

SELECT * from main.film f 


-- film actor-table

SELECT * from main.film_actor fa 

desc table main.film_actor 

SELECT * from main.actor a 

--actor

SELECT * from main.actor a 

-- catagory

SELECT * from main.category c 

SELECT * from main.film_category fc 

SELECT * from main.customer c where c.first_name like 'D%';

SELECT * from main.customer c where LOWER(left(first_name,2)) in ('an');

SELECT 'customer' as type ,c.first_name, c.last_name from main.customer c WHERE c.first_name LIKE 'D%';

SELECT * FROM main.actor a 

SELECT * FROM main.film f ;
DESC TABLE main.film ;

SELECT COUNT(*) AS movies FROM main.film f  

SELECT * FROM main.customer c 

SELECT store_id, COUNT(*) AS number_customers FROM main.customer c
GROUP BY store_id ORDER BY store_id ASC;

SELECT * FROM main.store s 





























