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



