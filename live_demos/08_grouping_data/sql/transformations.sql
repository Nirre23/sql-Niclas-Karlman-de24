-- id --> food
-- remove column googleTopic
-- year column
-- week_id --> week
-- value --> number_of_searches
CREATE table if not exists main.cleaned_food as  
SELECT
	id as food, 
	SUBSTRING(week_id,1,4) as year, --slicing som i python-- week_id[:4]
	value as number_of_searches,
	week_id[6:] AS week
FROM
	main.food f ;

desc;

SELECT
	id as food, 
	SUBSTRING(week_id,1,4) as year, --slicing som i python-- week_id[:4]
	value as number_of_searches,
	week_id[6:] AS week
FROM
	main.food f
	
	DESC;

CREATE table if not exists main.cleaned_food as ( 
SELECT
	id as food, 
	SUBSTRING(week_id,1,4) as year, --slicing som i python-- week_id[:4]
	value as number_of_searches,
	week_id[6:] AS week
FROM
	main.food f) ;

DESC;

SELECT * FROM main.cleaned_food cf 

DESC;


SELECT 
week_id FROM main.food f 
LIMIT 10

SELECT * FROM main.cleaned_food cf 

SELECT
    id AS food,
    SUBSTRING(week_id, 1, 4) AS year,
    value AS number_of_searches,
    SUBSTRING(week_id, 6) AS week
FROM
    main.food;
   
   SELECT * FROM main.cleaned_food cf 
   
SELECT
    id AS food, 
    SUBSTRING(week_id, 1, 4) AS year,
    value AS number_of_searches,
    SUBSTRING(week_id, 6) AS week
FROM
    main.food cf;


DESCRIBE main.cleaned_food;

SELECT * FROM main.cleaned_food cf LIMIT 10

CREATE TABLE IF NOT EXISTS main.cleaned_food AS 
SELECT
    id AS food, 
    SUBSTRING(week_id, 1, 4) AS year, 
    value AS number_of_searches, 
    SUBSTRING(week_id, 6) AS week
FROM
    main.food;
   
   SELECT * FROM main.cleaned_food cf 
   
   SELECT week_id FROM main.food LIMIT 10;
  
  DROP TABLE IF EXISTS main.cleaned_food;
 
 CREATE TABLE IF NOT EXISTS main.cleaned_food AS 
SELECT
    id AS food, 
    SUBSTRING(week_id, 1, 4) AS year, 
    value AS number_of_searches, 
    SUBSTRING(week_id, 6) AS week
FROM
    main.food;
   
   
--- top food summer
SELECT
	food,
	sum(number_of_searches) AS total_searches,
FROM
	main.cleaned_food cf
WHERE
	week BETWEEN '22' AND '34'
GROUP BY
	food, week
ORDER BY
	total_searches DESC 
LIMIT 10;

-- top food winter

SELECT
	food,
	sum(number_of_searches) AS total,
	week
FROM
	main.cleaned_food cf
WHERE
	week BETWEEN '46' AND '52' OR week BETWEEN '1' and '12'
GROUP BY
	food,week
ORDER BY
	total DESC
LIMIT 10;

--worst food winter

SELECT
	food,
	sum(number_of_searches) AS total,
	week
FROM
	main.cleaned_food cf
WHERE
	week BETWEEN '46' AND '52' OR week BETWEEN '1' and '12'
GROUP BY
	food,week	
ORDER BY
	total ASC 
LIMIT 10;

-- worst foods summer

SELECT
	food,
	week,
	sum(number_of_searches) AS total_searches,
FROM
	main.cleaned_food cf
WHERE
	week BETWEEN '22' AND '34'
GROUP BY
	food,
	week
HAVING
	total_searches > 0
ORDER BY
	total_searches ASC, week DESC 
LIMIT 10;




