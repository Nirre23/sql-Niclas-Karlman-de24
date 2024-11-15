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
	

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	experience_level = 'SE'
	OR experience_level = 'EX' ;
 
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	employment_type = 'FT';

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	salary_in_usd > 100000
ORDER BY salary_in_usd DESC ;

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	company_location = employee_residence; 

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	remote_ratio = 100;

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	company_size = 'L';

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	employment_type = 'FT'
	AND remote_ratio = 100
	AND salary > 250000;

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	job_title = 'Data Scientist';

SELECT * FROM main.data_jobs dj WHERE employee_residence = 'SE';

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	work_year = 2022
	AND salary_in_usd BETWEEN 50000 AND 100000;
	
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	remote_ratio BETWEEN 1 AND 99;
	
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	experience_level = 'SE'
	AND salary_in_usd > 150000;
	
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	employment_type = 'CT'
	AND company_size = 'M';
	
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	employee_residence = 'US'
	OR employee_residence = 'UK'
	OR employee_residence = 'CA';
	
SELECT
	work_year,
	COUNT(*) AS job_count
FROM
	main.data_jobs dj
GROUP BY
	work_year
	ORDER BY work_year;	
	
SELECT COUNT(*) AS remote_jobs
FROM	main.data_jobs dj 
WHERE  remote_ratio = 100;

SELECT
	experience_level ,
	COUNT(*) as job_count
FROM
	main.data_jobs dj
GROUP BY
	experience_level 
ORDER BY
	job_count DESC ;


SELECT
	employee_residence,
	COUNT(*) AS country
FROM
	main.data_jobs dj
GROUP BY
employee_residence
ORDER BY country DESC  ;

SELECT
	employment_type,
	COUNT(*) AS work_titles
FROM
	main.data_jobs dj
GROUP BY
	employment_type
ORDER BY
	work_titles desc;

SELECT
	count(*) AS large_company_jobs
FROM
	main.data_jobs dj
WHERE
	company_size = 'L';

SELECT COUNT(*) AS small_jobs
FROM main.data_jobs dj 	WHERE company_size = 'S';

SELECT
	COUNT(*) AS medium_jobs
FROM
	main.data_jobs dj
WHERE
	company_size = 'M'; 

SELECT
	count(*) AS Over_100k
FROM
	main.data_jobs dj
WHERE
	salary_in_usd > 100000;


SELECT
	work_year,
	COUNT(*) AS jobs_per_year
FROM
	main.data_jobs dj 
GROUP BY work_year ;


SELECT
experience_level, 
	count(*) 
FROM
	main.data_jobs dj
GROUP  BY experience_level;

SELECT
	count(*) remote_jobs
FROM
	main.data_jobs dj
WHERE
	remote_ratio = 100
	
SELECT
	count(*) AS USA
FROM
	main.data_jobs dj
WHERE
	employee_residence = 'US';

SELECT
	COUNT(*) AS full_time
FROM
	main.data_jobs dj
WHERE
	employment_type = 'FT'
	
SELECT
	count(*) AS more_than50000
FROM
	main.data_jobs dj
WHERE
	salary_in_usd > 50000

SELECT
	company_size,
	count(*) AS job_count
FROM
	main.data_jobs dj
GROUP BY
	company_size
ORDER BY
	job_count DESC;

SELECT
	COUNT(*)
FROM
	main.data_jobs dj
WHERE
	job_title = 'AI Software Engineer' 

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	work_year = 2022


SELECT
	*
FROM
	main.data_jobs dj
WHERE
	remote_ratio = 100 ä

SELECT COUNT(*) AS 'us_jobs' FROM main.data_jobs dj WHERE employee_residence = 'US'

SELECT
	count(*) AS jobs_75k
FROM
	main.data_jobs dj
WHERE
	salary_in_usd = 75000;

SELECT
	*
FROM
	main.data_jobs dj
ORDER BY
	salary_in_usd DESC;

SELECT ROUND(avg(salary_in_usd)) AS avarage_salary,
max(salary_in_usd) AS max_salary,
min(salary_in_usd) AS min_salary,
median(salary_in_usd) AS med_salary,
FROM main.data_jobs dj ;


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
