--union

SELECT
	'customer' as type,
	c.first_name as firstname,
	c.last_name as lastname
from
	main.customer c
WHERE
	c.first_name like 'A%'
union
SELECT
	'Actor',
	a.first_name,
	a.last_name as type
from
	main.actor a
where
	a.first_name like 'A%';
--intersect-- all overlaping names 

SELECT
	c.first_name as firstname,
	c.last_name as lastname
from
	main.customer c
INTERSECT 
SELECT
	a.first_name,
	a.last_name as type
from
	main.actor a

SELECT
	c.first_name,
	c.last_name
from
	main.customer c
where
	c.first_name like 'J%'
	and c.last_name like 'D%'
union all
SELECT
	a.first_name,
	a.last_name
from
	main.actor a 
where
	a.first_name like 'J%'
	and a.last_name like 'D%';

SELECT
	c.first_name,
	c.last_name
from
	main.customer c
where
	c.first_name like 'J%'
	and c.last_name like 'D%'
union 
SELECT
	a.first_name,
	a.last_name
from
	main.actor a 
where
	a.first_name like 'J%'
	and a.last_name like 'D%';

-- combine customers and actors into one table

SELECT
	c.first_name,
	c.last_name
from
	main.customer c
INTERSECT 
SELECT
	a.first_name,
	a.last_name
from
	main.actor a
	
	
SELECT
	a.first_name,
	a.last_name
from
	main.actor a
WHERE
	a.first_name like 'J%'
	and a.last_name like 'D%'; 



	
	

