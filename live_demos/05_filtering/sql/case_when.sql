SELECT
	*
FROM
	main.data_jobs dj ;
	
--EN --> Entry level
 
--MI --> Mid level
	
--SE --> senior
	
--EX --> Expert

SELECT
	CASE
		when experience_level = 'EN' THEN 'Entry'
		WHEN experience_level = 'MI' THEN 'Mid level'
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'EX' THEN 'Expert'
	END as experience_level,
	* EXCLUDE (experience_level)
from
	main.data_jobs dj;

-- have i transformed my data
SELECT * FROM main.data_jobs dj;

-- to persist changes in the table --> update it
UPDATE
	main.data_jobs
SET
	experience_level = CASE
		when experience_level = 'EN' THEN 'Entry'
		WHEN experience_level = 'MI' THEN 'Mid level'
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'EX' THEN 'Expert'
	END;
SELECT * FROM main.data_jobs dj ;

SELECT DISTINCT experience_level from main.data_jobs dj
order by experience_level ASC ;
	


