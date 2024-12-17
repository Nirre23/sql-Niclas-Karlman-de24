desc;
-- film id, title
SELECT * from main.film f ;
-- film_id, actor_id
SELECT * from main.film_actor fa ;
--actor_id, first_name, last_name
SELECT * from main.actor a ;

-- Fråga: wich actor played in wich movies?

SELECT
	a.first_name ,
	a.last_name ,
	f.title as film_title,
	a.last_update ,
	a.actor_id
from
	main.film f
left join main.film_actor fa on
	f.film_id = fa.film_id
left join main.actor a on
	a.actor_id = fa.actor_id ;

select a.first_name,a.last_name,fa.film_id,fa.actor_id from main.film_actor fa 
left join main.actor a on fa.actor_id = a.actor_id
GROUP by a.first_name , a.last_name , fa.film_id ,fa.actor_id ;

DESC TABLE main.film 

select title, description from main.film f
union  
select title, description FROM main.film f 

SELECT round(avg(length)) as "Avarage filmlength", max(length) as "Longest film", min(length) as "Shortest film"
from main.film f 

SELECT DISTINCT rating from main.film f 

SELECT first_name,last_name, from main.customer c

SELECT * from main.customer c 

desc table main.customer 

select first_name,last_name,film_id from main.customer c 
left join main.film f on c.customer_id = f.film_id 

SELECT cl.name, cl.ID,r.customer_id,r.rental_id,  from main.customer_list cl 
left join main.rental r on cl.ID = r.rental_id ;


SELECT 
	a.last_name as actor_last_name,
	c.last_name as customer_last_name
from
	main.customer c
join main.actor a on
	c.customer_id = a.actor_id
where
	a.last_name like 'G%'
	AND c.last_name like 'G%';


SELECT * FROM main.actor a where last_name like 'G%'


SELECT 
    c.last_name AS customer_last_name,a. last_name AS actor_last_name, 
FROM 
    main.customer c
JOIN 
    main.actor a ON a.last_update = c.last_update 
WHERE 
    c.last_name LIKE 'G%' -- Skådespelare vars efternamn börjar på 'G'
    OR a.last_name LIKE 'G%'; -- Kunder vars efternamn börjar på 'G'
    
   -- Kontrollera om det finns NULL-värden i customer_id eller actor_id
SELECT * 
FROM main.customer c
WHERE c.customer_id IS NULL;

SELECT * 
FROM main.actor a
WHERE a.actor_id IS NULL;
 

desc table main.customer 

desc table main.actor 

SELECT 
    a.last_name AS actor_last_name, 
    c.last_name AS customer_last_name
FROM 
    main.customer c
LEFT JOIN 
    main.actor a ON c.customer_id = a.actor_id
WHERE
    (c.last_name LIKE 'G%' OR c.last_name IS NULL) -- Skådespelare vars efternamn börjar på 'G' eller ingen match
    AND a.last_name LIKE 'G%'; -- Kunder vars efternamn börjar på 'G'



SELECT * from main.actor a where last_name like 'G%'

SELECT
	last_name, 'actor' as type
from
	main.actor a
where
	last_name like 'G%'
union 
SELECT
	last_name, 'customer ' as type
from
	main.customer
where
	last_name like 'G%'
	
SELECT
	(
	SELECT
		COUNT(*)
	from
		main.customer c
	where
		first_name like '%ANN%') as customers,
	(
	SELECT
		count(*), 
	from
		main.actor a
	where
		first_name like '%ANN%') as actors
		
SELECT first_name from main.actor a		

-- Hämta och visa namn från kunder och skådespelare med 'ann' i förnamnet
SELECT 
    'Customer' AS type,
    first_name,
    last_name
FROM main.customer
WHERE first_name LIKE '%ann%'

UNION ALL

SELECT 
    'Actor' AS type,
    first_name,
    last_name
FROM main.actor
WHERE first_name LIKE '%ANN%';
SELECT
	COUNT(*) AS total_count
FROM
	(
	SELECT
		first_name,
		last_name
	FROM
		main.customer
	WHERE
		first_name LIKE '%ANN%'
UNION ALL
	SELECT
		first_name,
		last_name
	FROM
		main.actor
	WHERE
		first_name LIKE '%ANN%'
) AS combined;

WITH combined AS (
    SELECT 
        'Customer' AS type,
        first_name,
        last_name
    FROM main.customer
    WHERE first_name LIKE '%ANN%'
    UNION ALL
    SELECT 
        'Actor' AS type,
        first_name,
        last_name
    FROM main.actor
    WHERE first_name LIKE '%ANN%'
)
SELECT * FROM combined -- Visa alla namn
UNION ALL
SELECT 
    'Total Count' AS type,
    COUNT(*)::TEXT AS first_name, -- Lägg räkningen här
    NULL AS last_name
FROM combined;
WITH combined AS (
    SELECT 
        'Customer' AS type,
        first_name,
        last_name
    FROM main.customer
    WHERE first_name LIKE '%ANN%'
    UNION ALL
    SELECT 
        'Actor' AS type,
        first_name,
        last_name
    FROM main.actor
    WHERE first_name LIKE '%ANN%'
)
SELECT * FROM combined -- Visa alla namn
UNION ALL
SELECT 
    'Total Count' AS type,
    COUNT(*)::TEXT AS first_name, -- Lägg räkningen här
    NULL AS last_name
FROM combined;

SELECT
	cl.city,
	cl.country,
	c.customer_id ,
	c.first_name,
	c.last_name
from
	main.customer_list cl
left join main.customer c on c.customer_id = cl.ID
WHERe c.first_name like 'J%' and c.last_name like 'D%'

SELECT * from main.film f 

SELECT
	first_name,
	last_name,
	title 
from
	main.customer c
join main.rental r on c.customer_id = r.rental_id 
join main.film f on r.rental_id = f.film_id 
	
select
	last_name as "Last name" ,
	'Actor' as Type
from
	main.actor a
where
	last_name like 'G%'
union 
SELECT
	last_name ,
	'Customer' as Type
from
	main.customer c
where
	last_name like 'G%'
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
