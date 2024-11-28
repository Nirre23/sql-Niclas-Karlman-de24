CREATE table if not exists people_records AS (
select
	*
FROM
	(
values(
1,
'Johan'),
	(2,
	'Niclas'),
	(3,
	'Eva')
) as people(id,
name));

SELECT
	FLOOR(random()* 6 + 1) as dice,
from
	generate_series(9),
select(COUNT(AVG(dice)) where dice = 6 ;

SELECT
	UNNEST (generate_series(1,
	100)) as id,
	'student' || id as student,
	round(random() * 100) as score
	order by score asc;
	
SELECT
	*
FROM
	generate_series(DATE '2024-11-01',
	DATE '2024-11-30',
	interval '1 day') as t(november);
	
CREATE table if not exists dim_date as (
select
	strftime(date_series,
	'%Y-%m-%d') as date,
	MONTH(date_series) as month,
	week(date_series) as week_number,
	weekday(date_series) as day_of_week,
FROM
	generate_series(date '2024-1-01',
	date '2024-12-31',
	interval 1 day) as t(date_series));
SELECT * from people_records;
INSERT
	into
	people_records(id,
	name)
	values(4,'Josefine')
	
select random from generate_series;	

SELECT
count(dice) as count_of_6,
	avg(dice) as avg_six
from
	(
	select
		FLOOR(random()* 6 + 1) as dice
	from
		generate_series(1,
		100000)
		) subquery
where
	dice = 6;

