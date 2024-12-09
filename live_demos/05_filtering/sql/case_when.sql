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

SELECT case when lower(trim()	


SELECT DISTINCT salary_currency from main.data_jobs dj 
-- TRY SGD CLP INR BRL AUD NOK ZAR EUR ILS DKK THB MXN JPY HKD GBPN NZD PHP CAD CHF PLN HUF

SELECT
	case
		when salary_currency = 'USD' then 'US DOLLAR'
		when salary_currency = 'TRY' then 'TURKISK LIRA'
		WHEN salary_currency = 'SGD' THEN 'SINGAPORE DOLLAR'
		WHEN salary_currency = 'CLP' THEN 'CHILENSKA PESO'
		WHEN salary_currency = 'INR' THEN 'INDISKA RUPIE'
		when salary_currency = 'BRL' THEN 'BRASILIANSK REAL'
		WHEN salary_currency = 'AUD' THEN 'AUSTRALIENSISK DOLLAR'
		WHEN salary_currency = 'NOK' THEN 'NORSK KRONE'
		WHEN salary_currency = 'ZAR' THEN 'SYDAFRIKANSK RAND'
		WHEN salary_currency = 'EUR' THEN 'EURO'
		WHEN salary_currency = 'ILS' THEN 'ISRAELISK SHEKEL'
		WHEN salary_currency = 'DKK' THEN 'DANSK KRONA'
		WHEN salary_currency = 'THB' THEN 'THAILÄNDSK BAHT'
		WHEN salary_currency = 'MXN' THEN 'MEXIKANSK PESO'
		WHEN salary_currency = 'JPY' THEN 'JAPANSK YEN'
		WHEN salary_currency = 'HKD' THEN 'HONGKONG DOLLAR'
		WHEN salary_currency = 'GBP' THEN 'BRITTISK PUND'
		WHEN salary_currency = 'NZD' THEN 'NYZEELÄNDSK DOLLAR'
		WHEN salary_currency = 'PHP' THEN 'FILIPINSK PESO'
		WHEN salary_currency = 'CAD' THEN 'KANADENSISK DOLLAR'
		WHEN salary_currency = 'CHF' THEN 'SCHWEIZISK FRANK'
		WHEN salary_currency = 'PLN' THEN 'POLSK ZLOTY'
		WHEN salary_currency = 'HUF' THEN 'UNGERSK FORINT'
		end as salary_currency 
from
	main.data_jobs dj ;

UPDATE main.data_jobs SET salary_currency = CASE 
		when salary_currency = 'USD' then 'US DOLLAR'
		when salary_currency = 'TRY' then 'TURKISK LIRA'
		WHEN salary_currency = 'SGD' THEN 'SINGAPORE DOLLAR'
		WHEN salary_currency = 'CLP' THEN 'CHILENSKA PESO'
		WHEN salary_currency = 'INR' THEN 'INDISKA RUPIE'
		when salary_currency = 'BRL' THEN 'BRASILIANSK REAL'
		WHEN salary_currency = 'AUD' THEN 'AUSTRALIENSISK DOLLAR'
		WHEN salary_currency = 'NOK' THEN 'NORSK KRONE'
		WHEN salary_currency = 'ZAR' THEN 'SYDAFRIKANSK RAND'
		WHEN salary_currency = 'EUR' THEN 'EURO'
		WHEN salary_currency = 'ILS' THEN 'ISRAELISK SHEKEL'
		WHEN salary_currency = 'DKK' THEN 'DANSK KRONA'
		WHEN salary_currency = 'THB' THEN 'THAILÄNDSK BAHT'
		WHEN salary_currency = 'MXN' THEN 'MEXIKANSK PESO'
		WHEN salary_currency = 'JPY' THEN 'JAPANSK YEN'
		WHEN salary_currency = 'HKD' THEN 'HONGKONG DOLLAR'
		WHEN salary_currency = 'GBP' THEN 'BRITTISK PUND'
		WHEN salary_currency = 'NZD' THEN 'NYZEELÄNDSK DOLLAR'
		WHEN salary_currency = 'PHP' THEN 'FILIPINSK PESO'
		WHEN salary_currency = 'CAD' THEN 'KANADENSISK DOLLAR'
		WHEN salary_currency = 'CHF' THEN 'SCHWEIZISK FRANK'
		WHEN salary_currency = 'PLN' THEN 'POLSK ZLOTY'
		WHEN salary_currency = 'HUF' THEN 'UNGERSK FORINT'
		end;

	SELECT DISTINCT salary_currency FROM main.data_jobs dj 

	SELECT * FROM main.data_jobs dj ORDER BY salary_currency ASC;

CREATE table niclas as select * from main.data_jobs dj ;

SELECT * from main.niclas;


select
	case
		when lower(TRIM(employment_type)) = 'ct' then 'Contract'
		when lower(TRIM(employment_type)) = 'ft' then 'Full time'
		when lower(TRIM(employment_type)) = 'fl' then 'Freelance'
		when lower(TRIM(employment_type)) = 'pt' then 'Part time'
	end as employment_type
from
	main.niclas;

update
	main.niclas
set
	employment_type = case
		when lower(TRIM(employment_type)) = 'ct' then 'Contract'
		when lower(TRIM(employment_type)) = 'ft' then 'Full time'
		when lower(TRIM(employment_type)) = 'fl' then 'Freelance'
		when lower(TRIM(employment_type)) = 'pt' then 'Part time'
	end;

SELECT DISTINCT employment_type from main.niclas;

SELECT case 
when company_size = 'L' then 'Large'
when company_size = 'M' then 'Medium'
when company_size = 'S' then 'Small'
end as company_size
from main.niclas;

update main.niclas set company_size = case 
	when company_size = 'L' then 'Large'
when company_size = 'M' then 'Medium'
when company_size = 'S' then 'Small'
end;

SELECT distinct company_size from main.niclas;

alter table main.niclas add column sek_month INTEGER;

select distinct sek_year,sek_month from main.niclas



