SELECT
	COUNT(*)
from
	main.data_jobs ;

SELECT
	MIN(salary_in_usd) as min_salary_usd,
	round(avg(salary_in_usd)) as mean_salary_usd,
	median(salary_in_usd) as median_salary_usd,
	Max(salary_in_usd) as max_salary_usd,
from
	main.data_jobs dj ;