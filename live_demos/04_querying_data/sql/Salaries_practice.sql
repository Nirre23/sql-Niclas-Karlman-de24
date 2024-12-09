SELECT
	job_title,
	COUNT(*) as total_jobs
from
	main.data_jobs dj
group by
	job_title
order by
	count(*) DESC ;

SELECT COUNT(DISTINCT job_title) AS 'Total jobs' FROM main.data_jobs dj ;

SELECT
	salary_in_usd,
	count(*)
FROM
	main.data_jobs dj
GROUP BY
	salary_in_usd ;