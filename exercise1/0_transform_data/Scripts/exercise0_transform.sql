--a

SELECT 
	 case
		when employment_type = 'FT' then 'Full time'
		when employment_type = 'PT' then 'Part time'
		when employment_type = 'CT' then 'Contract'
		when employment_type = 'FL' then 'Freelance'
		ELSE employment_type
	end as employment_type
from
	main.cleaned_salaries cs ;

update
	main.cleaned_salaries
set
	employment_type = case
		when employment_type = 'FT' then 'Full time'
		when employment_type = 'PT' then 'Part time'
		when employment_type = 'CT' then 'Contract'
		when employment_type = 'FL' then 'Freelance'
		ELSE employment_type
	end;

	SELECT * from main.cleaned_salaries;

desc

DROP TABLE cleaned_salaries;

SELECT * from cleaned_salaries;

summarize main.cleaned_salaries wherer c


SELECT * from main.cs;



SELECT
	CASE
		WHEN LOWER(TRIM(employment_type)) = 'ct' THEN 'Contract'
		WHEN LOWER(TRIM(employment_type)) = 'fl' THEN 'Freelance'
		WHEN LOWER(TRIM(employment_type)) = 'pt' THEN 'Part time'
		WHEN LOWER(TRIM(employment_type)) = 'ft' THEN 'Full time'
		ELSE employment_type
	END AS employment_type_cleaned
FROM
	main.data_jobs dj;
	

-- transformation in main.cs
UPDATE
	main.cs
SET
	employment_type = CASE
		WHEN LOWER(TRIM(employment_type)) = 'ct' THEN 'Contract'
		WHEN LOWER(TRIM(employment_type)) = 'fl' THEN 'Freelance'
		WHEN LOWER(TRIM(employment_type)) = 'pt' THEN 'Part time'
		WHEN LOWER(TRIM(employment_type)) = 'ft' THEN 'Full time'
		ELSE employment_type
	END;

SELECT
	DISTINCT employment_type,
FROM
	main.cs c;

---------------b 

SELECT
	CASE 
		WHEN LOWER(TRIM(company_size)) = 'l' THEN 'Large'
		WHEN LOWER(TRIM(company_size)) = 'm' THEN 'Medium'
		WHEN LOWER(TRIM(company_size)) = 's' THEN 'Small'
		ELSE company_size
	END AS company_size_cleaned
FROM
	main.data_jobs dj;

UPDATE
	main.cs
SET
	company_size = CASE 
		WHEN LOWER(TRIM(company_size)) = 'freelance' THEN 'Large'
		WHEN LOWER(TRIM(company_size)) = 'part time' THEN 'Medium'
		WHEN LOWER(TRIM(company_size)) = 'full time' THEN 'Small'
		ELSE company_size
	END;

SELECT DISTINCT company_size FROM main.cs c ;

SELECT * FROM cs


--- one approach is to  create a new table with this content and replace old content
-- create or replace table as...
SELECT
	salary_in_usd * 10.9 AS salary_sek_yearly,
	round(salary_sek_yearly/12) AS salary_sek_monthly,*
FROM
	main.cs c ;

--second approach is to add new columns



--e)

summarize main.cs; -- 93000 low, 129000. medium, 170000 high, ELSE insanely high

SELECT
salary_sek_monthly,
	CASE
		WHEN salary_sek_monthly < 93000  THEN 'Low'
		WHEN salary_sek_monthly < 129000 THEN 'Medium'
		wHEN salary_sek_monthly < 170000 THEN 'High'
		ELSE 'Insanely high'
	END AS salary_level
FROM
	main.cs c;

UPDATE
	main.cs
SET
	salary_level = CASE 
		WHEN salary_sek_monthly < 93000  THEN 'Low'
		WHEN salary_sek_monthly < 129000 THEN 'Medium'
		WHEN salary_sek_monthly < 170000 THEN 'High'
		ELSE 'Insanely high'
	END;

SELECT
	salary_sek_monthly,
	salary_level
FROM
	main.cs c ;

-- f 
CREATE OR replace TABLE main.cs AS(
SELECT
	experience_level,
	employment_type,
	job_title,
	salary_sek_yearly,
	salary_sek_monthly,
	remote_ratio,
	company_size,
	salary_level
FROM
	main.cs c);

SELECT * FROM main.cs c ;











































