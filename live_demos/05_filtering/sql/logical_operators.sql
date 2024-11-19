SELECT
	*
FROM
	main.data_jobs dj
WHERE
	salary_in_usd BETWEEN 200000 AND 500000;

SELECT
	job_title ,
	company_location ,
	employment_type ,
	round(salary_in_usd * 11.01 / 12) as salary_sek_month
FROM
	main.data_jobs dj
WHERE
	salary_in_usd BETWEEN 10 AND 500000
	and job_title = 'Data Engineer'
	AND experience_level = 'Entry'
	and employment_type = 'FT'  
ORDER by
	salary_sek_month;

SELECT * FROM main.data_jobs dj WHERE experience_level = 'Senior'
 AND salary_in_usd > 120000;

SELECT
	experience_level,
	count(*) AS job_count
FROM
	main.data_jobs dj
GROUP BY
	experience_level
ORDER BY
	job_count DESC;
	
SELECT
	salary_in_usd,
	job_title,
	company_location ,
	remote_ratio
FROM 
	main.data_jobs dj
ORDER BY
	salary_in_usd DESC
LIMIT 5;

SELECT
	round(AVG(salary_in_usd)) AS mean_salary_remote,remote_ratio 
FROM
	main.data_jobs dj
WHERE
	remote_ratio IN (0,100,50)
	GROUP BY remote_ratio 
ORDER BY mean_salary_remote DESC ;


SELECT
	experience_level ,
	count(*) AS total_jobs
FROM
	main.data_jobs dj
GROUP BY
	experience_level
ORDER BY
	total_jobs DESC ;

SELECT
	COUNT(*) AS MORE_THAN_50K
FROM
	main.data_jobs dj
WHERE
	salary_in_usd < 50000;

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	experience_level = 'Entry';

SELECT
	job_title,
	experience_level,
	(10.68 * salary_in_usd) / 12 AS salary_sek_month
FROM
	main.data_jobs dj
WHERE
	(salary_sek_month > 200000)
	AND (salary_sek_month < 500000)
ORDER BY
	salary_sek_month DESC ;

SELECT
	DISTINCT count(*) AS small_medium_company
FROM
	main.data_jobs dj
WHERE
	company_size IN ('M', 'S')
	GROUP BY company_size 

SELECT
	COUNT(*) AS total_jobs,
	COUNT(*) FILTER (
WHERE
	remote_ratio = 100 ) AS remote_jobs,
	round( COUNT(*) FILTER (
WHERE
	remote_ratio = 100) * 1.0 / count(*) * 100,
	2
) AS percentage_remote_jobs
FROM
	main.data_jobs dj ;

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	work_year = 2023;

SELECT
	job_title ,
	salary_in_usd ,
	remote_ratio
FROM
	main.data_jobs dj
WHERE
	salary_in_usd > 100000;

SELECT
	*
FROM
	main.data_jobs dj
ORDER BY
	salary_in_usd DESC;

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	experience_level = 'Senior';

SELECT
	DISTINCT employee_residence ,
	job_title ,
	company_location,
	remote_ratio 
FROM
	main.data_jobs dj
WHERE
	remote_ratio = 100;

SELECT
	sum(salary_in_usd) AS total_salary
FROM
	main.data_jobs dj 
WHERE employment_type = 'FT';

SELECT * FROM main.data_jobs;

SELECT
	DISTINCT count(*)
FROM
	main.data_jobs
WHERE
	company_size IN ('M', 'S');

SELECT
	DISTINCT (*) company_size AS sizes
FROM
	main.data_jobs dj 
	GROUP 	BY sizes;


