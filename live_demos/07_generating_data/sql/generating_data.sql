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

SELECT
	FLOOR(RANDOM()* 6 + 1) as dice
from
	generate_series(1,10); 

with DiceRolls as (
SELECT floor(random() * 6 + 1) as dice
FROM generate_series(1,1000000)
)
SELECT AVG(CASE when dice = 6 then 1 else 0 end) * 100 as avarage_six
from DiceRolls;


with dicerolls as ( SELECT floor(random() * 6+1) as dice
from generate_series(1,100)
)
select AVG(CASE WHEN dice = 6 then 1 else 0 end) *100 as avarage_six
from dicerolls;

with dicerolls as ( select floor(random() * 6+1) as dice
from generate_series(1,1000)
)
select avg(case when dice = 6 then 1 else 0 end) * 100 as avarage
from dicerolls;

with dicerolls as ( select floor(random() * 6+1 ) as dice
from generate_series(1,10000)
)
select AVG(CASE When dice = 6 then 1 else 0 end) * 100 as avarage
from dicerolls;

with dicerolls as ( SELECT FLOOR(Random() * 6+1) as dice
from generate_series(1,100000)
)
select avg(CASE when dice = 6 then 1 else 0 end) * 100 as dice_avarage
from dicerolls;

with rolls as ( select floor(random()* 6+1) as dice from
generate_series(1,1000000)
)
select avg(case when dice = 6 then 1 else 0 end) * 100 as avarage_6 from rolls;

with rolls as (
SELECT
	floor(random()* 6 + 1) as dice
from
	generate_series(1,
	100000)
)
select
	avg(case when dice = 6 then 1 else 0 end ) * 100 as avg_6
from
	rolls;

with rolls as (
SELECT
	FLOOR(RANDOM() * 6 + 1) as dice
from
	generate_series(1,
	1000000000)
)
select
	avg(CASE when dice = 6 then 1 else 0 end)* 100 as avg6
from
	rolls;
--e) the more times you roll, the closer you get to the answer 1/6

with rolls as (
SELECT
	floor(random()* 6 + 1 ) as dice
from
	generate_series(1,
	10)
)
select
	AVG(CASE when dice = 6 then 1 else 0 end)* 100 as avg6 from rolls;

with rolls as (
SELECT
	FLOOR(random()* 6 + 1) as dice
from
	generate_series(1,
	10)
)
select
	AVG(CASE WHEN dice = 6 then 1 else 0 end)* 100 avg6
from
	rolls; 










