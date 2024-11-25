SELECT 
	DISTINCT count(*)
from
	main.data_jobs WHERE company_size in ('M','S');

SELECT 
	DISTINCT count(*)
from
main.data_jobs
WHERE
company_size NOT in ('M', 'S');

--filter clause

SELECT
	COUNT(*) as total_jobs,
	count(*) filter (
WHERE
	remote_ratio = 100) AS remote_jobs,
	round(remote_jobs / total_jobs * 100) as percentage_remote_jobs
FROM
	main.data_jobs dj;

SELECT
	*
FROM
	main.data_jobs dj offset 16533;

SELECT COUNT()  

SELECT * FROM main.data_jobs dj ;

SELECT
	count(*) as lower_50k
from
	main.data_jobs dj
WHERE
	salary_in_usd < 50000; 

SELECT * FROM main.data_jobs dj ;

SELECT 
	CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MID' THEN 'Mid level'
		WHEN experience_level = 'EN' THEN 'Entry level'
		WHEN experience_level = 'EX' THEN 'Expert'
	END as experience_label,
	* exclude (experience_level)
FROM
		main.data_jobs dj ;

UPDATE
	main.data_jobs
SET 
	experience_level = CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MID' THEN 'Mid level'
		WHEN experience_level = 'EN' THEN 'Entry level'
		WHEN experience_level = 'EX' THEN 'Expert'
	END;

SELECT DISTINCT experience_level FROM main.data_jobs dj ;



	



















