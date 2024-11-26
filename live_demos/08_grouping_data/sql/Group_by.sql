-- 10 MOST SEARCHED FOODS
SELECT
	food,
	sum(number_of_searches) as total_searches
FROM
	main.cleaned_food
group by
	food
order by total_searches DESC 
LIMIT 10;


-- TOTAL SEARCHES BY YEAR
SELECT
	year,
	sum(number_of_searches) as total_searches
from
	main.cleaned_food
group by
	year
having total_searches > 300000 
ORDER BY
	total_searches DESC ;

-- MOST PUPOLAR FOOD IN SUMMER 
SELECT
	food
	where week b
from
	main.cleaned_food;

SELECT
	YEAR,
	food,
	sum(number_of_searches) as total_searches
FROM
	main.cleaned_food
group by
	food,
	year
order by
	total_searches desc;
DESC;





-- MOST PUPOLAR FOOD IN WINTER