SELECT
	job_title ,
	experience_level ,
	(10.68 * salary_in_usd) / 12 as salary_sek_month
FROM
	main.data_jobs dj
WHERE
	salary_sek_month > 200000
	AND salary_sek_month < 500000
order by
	salary_sek_month ASC  

--- BETWEEN
SELECT
	job_title ,
	experience_level ,
	(10.68 * salary_in_usd) / 12 as salary_sek
FROM
	main.data_jobs dj
WHERE
	salary_sek BETWEEN 200000 and 500000
order by
	salary_sek asc;

--OR OPERATOR

SELECT
	COUNT(*)
FROM
	main.data_jobs dj
WHERE
	experience_level = 'SE'
	or experience_level = 'EX';

SELECT
	COUNT(*)
FROM
	main.data_jobs dj
WHERE
NOT	experience_level = 'SE'
	or NOT experience_level = 'EX';




	
	