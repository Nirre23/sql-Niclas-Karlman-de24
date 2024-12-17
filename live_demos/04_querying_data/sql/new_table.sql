CREATE table if not exists exercise as
select
	*
from
	main
.data_jobs;

SELECT * from exercise

select case 
	when employment_type = 'FT' THEN 'Full time'
	when employment_type = 'PT' THEN 'Part time'
	when employment_type = 'CT' THEN 'Contract'
	when employment_type = 'FL' THEN 'Freelance'
end as employment_type
from exercise;

SELECT DISTINCT employment_type from exercise;

UPDATE
	exercise
set
	employment_type = CASE
		when employment_type = 'FT' THEN 'Full time'
		when employment_type = 'PT' THEN 'Part time'
		when employment_type = 'CT' THEN 'Contract'
		when employment_type = 'FL' THEN 'Freelance'
	end
	
	SELECT DISTINCT employment_type from exercise;

select
	case
		when company_size = 'L' THEN 'Large'
		when company_size = 'M' THEN 'Medium'
		when company_size = 'S' THEN 'Small'
	end as company_size
from exercise;

update
	exercise
set
	company_size = case
		when company_size = 'L' THEN 'Large'
		when company_size = 'M' THEN 'Medium'
		when company_size = 'S' THEN 'Small'
	end
	
	SELECT DISTINCT company_size from exercise;

SELECT * from exercise;

select
	salary_in_usd * 10.9 as sek_Y,
	round((salary_in_usd * 10.9) / 12) as sek_M,
	*
from
	exercise;

ALTER table exercise add column sek_M INT;

ALTER table exercise add column sek_Y INT;

desc table exercise;

SELECT sek_m,sek_y from exercise;

UPDATE exercise set sek_Y = salary_in_usd * 10.9,
sek_m = (salary_in_usd * 10.9) / 12 

select sek_m,sek_y from exercise

alter table exercise add column salary_level varchar

update
	exercise
set
	salary_level = case
		when sek_m < 93000 then 'Low'
		when sek_m < 129000 then 'Medium'
		when sek_m < 170000 then 'High'
		ELSE 'Insanely high'
		end
		
		select DISTINCT salary_level, sek_m from exercise;
	
CREATE or replace TABLE exercise as(
SELECT 
	experience_level,
	employment_type,
	job_title,
	sek_y,
	sek_m,
	remote_ratio,
	company_size,
	salary_level
from
	exercise);

SELECT * from exercise;

SELECT count(*) as DE from exercise where job_title = 'Data Engineer'; 

select count(distinct job_title) as total_jobs from exercise;

select count(distinct job_title) as jobs, salary_level from exercise
group by salary_level;

select
	job_title,
	median(sek_m) as median_salary
from
	exercise
group by
	job_title
order by
	median_salary desc
limit 10;

SELECT
	remote_ratio,
	count(*) AS job_count,
	round((count(*) * 100.0 / (
	SELECT
		count(*)
	FROM
		exercise)),
	2) AS percentage
FROM
	exercise
GROUP BY
	remote_ratio;

select
	job_title,company_size,
	round(avg(sek_m)) as avarage_salary
from
	exercise
	where job_title = 'NLP Engineer' OR job_title = 'Data Engineer' OR job_title = 'AI Engineer'
 	group by company_size,job_title
 	ORDER BY avarage_salary DESC
 	
SELECT floor(random()*6+1) AS dice; 	

SELECT
	roll_number,
	FLOOR(Random()* 6 + 1) AS roll
FROM
		generate_series(1,10) AS roll_number; 
	