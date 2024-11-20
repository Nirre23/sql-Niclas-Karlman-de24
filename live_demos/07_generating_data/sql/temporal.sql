SELECT
	*
FROM
	generate_series(date '2024-11-20',
	date '2024-11-30',
	interval '1 day') as t(november);
	
--date dimension 

SELECT
	strftime(date_series,'%Y-%m-%d') as date,
	month(date_series) as month,
	week(date_series) as week_number,
	weekday(date_series) as day_of_week,
FROM
	generate_series(date '2024-1-01',
	date '2024-12-31',
	interval '1 day') as t(date_series);
	

