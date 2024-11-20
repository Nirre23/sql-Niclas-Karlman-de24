SELECT
	*
FROM
	main.data_jobs dj ;
	
SELECT
	CASE
		WHEN experience_level = 'Senior' THEN 'SE'
		WHEN experience_level = 'Mid level' THEN 'MID'
		WHEN experience_level = 'Entry' THEN 'EN'
		WHEN experience_level = 'Expert' THEN 'EX'
	end as experience_level,
	* EXCLUDE (experience_level)
FROM
	main.data_jobs dj ;

SELECT * from main.data_jobs dj ;

UPDATE
	main.data_jobs
SET
	experience_level = CASE
		WHEN experience_level = 'Senior' THEN 'SE'
		WHEN experience_level = 'Mid level' THEN 'MID'
		WHEN experience_level = 'Entry' THEN 'EN'
		WHEN experience_level = 'Expert' THEN 'EX'
	end;
	
SELECT
	DISTINCT experience_level
from
	main.data_jobs dj
order by
	experience_level desc;
	
