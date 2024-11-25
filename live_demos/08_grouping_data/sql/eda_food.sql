--EDA exploratory data anylysis-- förstå datasetet

SELECT
	COUNT( DISTINCT id) as food
FROM
	main.food f ; --- 201 food categories
	
SELECT
	COUNT(*) --- 135025 rows
from
	main.food f

--columns: id, googleTopic, week_Id, value	
desc main.food;	


SELECT
	*
from
	main.food f
where
	week_id BETWEEN '2004-04' and '2004-10';

SELECT
	week_id,
	value
from
	main.food f;














	