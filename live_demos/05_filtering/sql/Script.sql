SELECT * FROM main.data_jobs dj;

SELECT
	COUNT(*) jobs_lower_than50k
from
	main.data_jobs dj
WHERE
	salary_in_usd < 50000;

SELECT *
FROM
	main.data_jobs dj 


SELECT
	COUNT(*) 
from
	main.data_jobs dj
WHERE	experience_level = 'Entry'

SELECT
	median(salary_in_usd) as median_salary
from
	main.data_jobs dj
WHERE	experience_level = 'Entry'
	

SELECT
	median(salary_in_usd) as median_salary
from
	main.data_jobs dj
WHERE	experience_level = 'Mid level';


SELECT
	median(salary_in_usd) as median_salary
from
	main.data_jobs dj
WHERE	experience_level = 'Expert'

SELECT COUNT( job_title)
from	main.data_jobs dj ;

SELECT
	job_title ,
	salary_in_usd ,
	experience_level 
from
	main.data_jobs dj
WHERE
	salary_in_usd > 200000;

SELECT
	(SELECT COUNT(*)
from
	main.data_jobs dj) as total_jobs,
	job_title
from
	main.data_jobs dj ;

SELECT
	job_title ,
	employee_residence ,
	salary_in_usd,
	company_size 
from
	main.data_jobs dj 
where company_size = 'L' AND remote_ratio = 100
ORDER by salary_in_usd desc;


select
	employee_residence,
	round(AVG(salary_in_usd)) as mean_salary
FROM
	main.data_jobs dj
group by
	employee_residence
ORDER by
	mean_salary desc;

SELECT
	COUNT(work_year) 
FROM
	main.data_jobs dj
WHERE
	work_year in (2023,2024);
	

SELECT
	job_title ,
	employment_type ,
	salary_in_usd
FROM
	main.data_jobs dj
WHERE
	company_size = 'S'
	and salary_in_usd < 50000;