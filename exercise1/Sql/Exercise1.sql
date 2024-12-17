SELECT * from main.data_jobs dj 

CREATE TABLE IF NOT EXISTS jobs

select count(*) as rows from main.data_jobs dj 

desc table main.data_jobs 

SELECT min(salary_in_usd),round(avg(salary_in_usd)),median(salary_in_usd),max(salary_in_usd) from main.data_jobs dj 

CREATE table if not exists fixed  as select * from main.data_jobs dj 

SELECT * from fixe
d

select
	case
		when trim(employment_type) = 'CT' then 'Contract'
		when trim(employment_type) = 'FT' then 'Full time'
		when trim(employment_type) = 'PT' THEN 'Part time'
		when trim(employment_type) = 'FL' THEN 'Freelance'
	end as employment_type
from
	fixed;

SELECT DISTINCT employment_type from fixed

update fixed set employment_type = case 
	when trim(employment_type) = 'CT' then 'Contract'
		when trim(employment_type) = 'FT' then 'Full time'
		when trim(employment_type) = 'PT' THEN 'Part time'
		when trim(employment_type) = 'FL' THEN 'Freelance'
end

SELECT CASE
when company_size = 'M' THEN 'Medium'
when company_size = 'S' THEN 'Small'
when company_size = 'L' THEN 'Large'
end as company_size
from fixed;

update
	fixed
set
	company_size = case
		when company_size = 'M' THEN 'Medium'
		when company_size = 'S' THEN 'Small'
		when company_size = 'L' THEN 'Large'
end

SELECT * from fixed

select (salary_in_usd * 10.9) as sek_year,
round((salary_in_usd * 10.9) / 12) as sek_månad from main.fixed;

alter table fixed add column sek_year int;

alter table fixed add column sek_månad int;

UPDATE fixed set sek_year = salary_in_usd*10.9;

update fixed set sek_månad = (salary_in_usd*10.9)/12;

SELECT sek_year from fixed

SELECT sek_månad from fixed

ALTER table fixed add column salary_level varchar;

select case when sek_månad < 

















