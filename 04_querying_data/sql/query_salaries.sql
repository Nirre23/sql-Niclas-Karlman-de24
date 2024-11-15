SELECT
	*
FROM
data_jobs;

-- namespace
SELECT
	*
from
	main.data_jobs dj ;

-- Fully qualified name
SELECT
	*
FROM
	salaries.main.data_jobs dj;
	
SELECt * FROM main.data_jobs dj limit 10;

SELECT
	work_year,
	salary_in_usd,
	job_title,
	remote_ratio
FROM
	main.data_jobs dj
	order by salary_in_usd DESC  ;

SELECT
	* EXCLUDE(salary,
	employee_residence,
	work_year)
FROM
	main.data_jobs dj ;

