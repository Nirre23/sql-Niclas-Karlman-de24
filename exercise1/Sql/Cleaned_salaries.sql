CREATE TABLE IF NOT EXISTS clean_salaries AS (
select
	*,
	CASE
		WHEN TRIM(employment_type) = 'CT' THEN 'Contract'
		WHEN TRIM(employment_type) = 'FL' THEN 'Freelance'
		WHEN TRIM(employment_type) = 'PT' THEN 'Part time'
		WHEN TRIM(employment_type) = 'FT' THEN 'Full time'
	END AS employment_type_transformed
FROM
	main.data_jobs dj);
	
SELECT * from clean_salaries;

SELECT
	DISTINCT employment_type,
	employment_type_transformed
from
	clean_salaries;

DROP TABLE IF EXISTS clean_salaries;

CREATE TABLE clean_salaries AS (
    SELECT
        *,
        CASE
            WHEN UPPER(TRIM(employment_type)) = 'CT' THEN 'Contract'
            WHEN UPPER(TRIM(employment_type)) = 'FL' THEN 'Freelance'
            WHEN UPPER(TRIM(employment_type)) = 'PT' THEN 'Part time'
            WHEN UPPER(TRIM(employment_type)) = 'FT' THEN 'Full time'
            ELSE 'Unknown'
        END AS employment_type_transformed
    FROM main.data_jobs
);


SELECT employment_type, employment_type_transformed from clean_salaries ;

SELECT * from clean_salaries;

UPDATE clean_salaries 
SET company_size = CASE 
	when company_size = 'L' THEN 'Large'
	when company_size = 'M' THEN 'Medium'
	when company_size = 'S' THEN 'Small'
	ELSE 'Unknown'
END;

SELECT
	*
from
	clean_salaries;

alter table clean_salaries
add column salary_yearly_sek integer;


alter table clean_salaries
add column salary_monthly_sek integer;

SELECT * from clean_salaries;

alter table clean_salaries 
add column salary_level varchar;

update
	clean_salaries
set
	salary_level = 'Insanely high'
where
	salary_in_usd > 5000000;


SELECT count(*) from clean_salaries WHERE salary_in_usd > 500000 ;


UPDATE clean_salaries
SET salary_level = 'Insanely high'
WHERE salary_in_usd > 5000000;


select * from clean_salaries WHERE salary_level IS NULL;

UPDATE clean_salaries
SET salary_level = CASE
    WHEN salary_in_usd > 500000 THEN 'Insanely high'
    WHEN salary_in_usd BETWEEN 100000 AND 5000000 THEN 'High'
    WHEN salary_in_usd BETWEEN 50000 AND 100000 THEN 'Medium'
    ELSE 'Low'
END;

select count(*) from main.data_jobs dj WHERE LOWER(TRIM(job_title)) = 'data engineer' ;

SELECT
	COUNT(*) as Data_eningeers
from
	clean_salaries
WHERE
	LOWER(TRIM(job_title)) = 'data engineer';

SELECT COUNT(DISTINCT job_title) as unique_jobs from main.data_jobs dj; 

SELECT
	salary_level,
	count(DISTINCT job_title) as number_jobs
from
	clean_salaries
group by
	salary_level
order by
	number_jobs DESC;

SELECT salary_level, COUNT(*) AS number_of_jobs
FROM clean_salaries
GROUP BY salary_level
ORDER BY COUNT(*) DESC;

SELECT 
    salary_level, 
    COUNT(DISTINCT job_title) AS number_of_jobs
FROM 
    clean_salaries
GROUP BY 
    salary_level
ORDER BY 
    number_of_jobs DESC;
   
SELECT count(DISTINCT job_title) from main.data_jobs dj 

SELECT
	salary_level,
	COUNT(job_title) as jobs
from
	clean_salaries
group by
	salary_level
ORDER BY
	jobs DESC ;



SELECT experience_level from clean_salaries

SELECT
	experience_level,
	round(avg(salary_in_usd),
	2) as mean_salary,
	median(salary_in_usd) as median_salary
from
	clean_salaries
group by
	experience_level
order by
	experience_level

FROM	main.data_jobs dj 
	
CREATE TABLE IF NOT EXISTS cs AS
SELECT
*,
	CASE
		WHEN company_size = 'L' THEN 'Large'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'S' THEN 'Small'
	END AS company_size_transformed
FROM
	main.data_jobs dj;

SELECT
	*,
	CASE
		WHEN lower(trim(employment_type)) = 'ct' THEN 'Contract'
		WHEN lower(TRIM(employment_type)) = 'fl' THEN 'Freelance'
		WHEN lower(trim(employment_type)) = 'pt' THEN 'Part time'
		WHEN lower(trim(employment_type)) = 'ft' THEN 'Full time'
		ELSE 'Unknown'
	END AS experience_level_transformed
FROM
				main.data_jobs dj ;
			
SELECT DISTINCT company_size,employment_type
FROM main.data_jobs dj
GROUP BY employment_type ,company_size  

SELECT * FROM cs

UPDATE
	cs
SET
	employment_type = CASE
		WHEN LOWER(TRIM(employment_type)) = 'ct' THEN 'Contract'
		WHEN LOWER(TRIM(employment_type)) = 'pt' THEN 'Part time'
		WHEN LOWER(TRIM(employment_type)) = 'ft' THEN 'Full time'
		WHEN LOWER(TRIM(employment_type)) = 'fl' THEN 'Freelance'
		ELSE 'Unknown'
		END,	
	company_size = case
		WHEN lower(trim(company_size)) = 'l' THEN 'Large'
		WHEN LOWER(TRIM(company_size)) = 'm' THEN 'Medium'
		WHEN LOWER(trim(company_size)) = 's' THEN 'Small'
		ELSE 'Unknown' 
		END ;
	
SELECT
	company_size,
FROM cs;	
		
SELECT
    employment_type,
    LOWER(TRIM(employment_type)) AS cleaned_employment_type,
    CASE
        WHEN LOWER(TRIM(employment_type))= 'ct' THEN 'Contract'
        WHEN LOWER(TRIM(employment_type))= 'pt' THEN 'Part time'
        WHEN LOWER(TRIM(employment_type)) = 'ft' THEN 'Full time'
        WHEN LOWER(TRIM(employment_type)) = 'fl' THEN 'Freelance'
        ELSE 'Unknown'
    END AS transformed_employment_type,
    company_size,
    LOWER(TRIM(company_size)) AS cleaned_company_size,
    CASE	
        WHEN LOWER(TRIM(company_size)) = 'l' THEN 'Large'
        WHEN LOWER(TRIM(company_size)) = 'm' THEN 'Medium'
        WHEN LOWER(TRIM(company_size)) = 's' THEN 'Small'
        ELSE 'Unknown'
    END AS transformed_company_size
FROM cs;

UPDATE cs
SET
    employment_type = CASE
        WHEN LOWER(TRIM(employment_type))= 'ct' THEN 'Contract'
        WHEN LOWER(TRIM(employment_type))= 'pt' THEN 'Part time'
        WHEN LOWER(TRIM(employment_type)) = 'ft' THEN 'Full time'
        WHEN LOWER(TRIM(employment_type)) = 'fl' THEN 'Freelance'
        ELSE 'Unknown'
    END
    
    company_size = CASE
        WHEN LOWER(TRIM(company_size)) = 'l' THEN 'Large'
        WHEN LOWER(TRIM(company_size)) = 'm' THEN 'Medium'
        WHEN LOWER(TRIM(company_size)) = 's' THEN 'Small'
        ELSE 'Unknown' 
    END;

SELECT changes();


SELECT * FROM cs

UPDATE cs
SET
    company_size = CASE
        WHEN LOWER(TRIM(company_size)) = 'l' THEN 'Large'
        WHEN LOWER(TRIM(company_size)) = 'm' THEN 'Medium'
        WHEN LOWER(TRIM(company_size)) = 's' THEN 'Small'
        ELSE 'Unknown' 
    END;
   
SELECT * FROM cs   

ALTER TABLE cs DROP COLUMN company_size

ALTER TABLE cs rename COLUMN company_size_transformed TO company_size;

UPDATE cs
SET
    employment = CASE
        WHEN trim(employment) = 'CT' THEN 'Contract'
        WHEN TRIM(employment) = 'PT' THEN 'Part time'
        WHEN TRIM(employment) = 'FT' THEN 'Full time'
        WHEN trim(employment) = 'FL' THEN 'Freelance'
    END

SELECT employment FROM cs

ALTER TABLE cs RENAME COLUMN employment_type TO employment;


SELECT
    employment,
    LOWER(TRIM(employment)) AS cleaned_employment_type,
    CASE
        WHEN LOWER(TRIM(employment))= 'ct' THEN 'Contract'
        WHEN LOWER(TRIM(employment))= 'pt' THEN 'Part time'
        WHEN LOWER(TRIM(employment)) = 'ft' THEN 'Full time'
        WHEN LOWER(TRIM(employment)) = 'fl' THEN 'Freelance'
        ELSE 'Unknown'
    END AS transformed_employment_type,
FROM cs;

CREATE TABLE cleaned_salaries AS
SELECT
	*,
	CASE
		WHEN trim(employment) = 'CT' THEN 'Contract'
		WHEN trim(employment) = 'FT' THEN 'Full time'
		WHEN trim(employment) = 'PT' THEN 'Part time'
		WHEN trim(employment) = 'FL' THEN 'Freelance'
		ELSE 'Unknown'
	END AS cleaned_employment
FROM
	cs;

SELECT * FROM cs

DESC TABLE cs

SELECT * from cs

SELECT * from main.data_jobs dj 

