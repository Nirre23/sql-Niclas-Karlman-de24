SELECT
	*
FROM
	main.data_jobs dj
WHERE
	salary_in_usd BETWEEN 200000 AND 500000;

SELECT
	job_title ,
	company_location ,
	employment_type ,
	round(salary_in_usd * 11.01 / 12) as salary_sek_month
FROM
	main.data_jobs dj
WHERE
	salary_in_usd BETWEEN 10 AND 500000
	and job_title = 'Data Engineer'
	AND experience_level = 'Entry'
	and employment_type = 'FT'  
ORDER by
	salary_sek_month;


