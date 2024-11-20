SELECT UNNEST 
	(generate_series(1,
	100)) as id;

SELECT
	FLOOR(random()*6+1) as dice
from generate_series(100);

SELECT
	id,
	'student_' || id as student,
	score,
	case
		when score < 50 then 'F'
		when score > 75 then 'E'
		else 'D'
	end as grade
from( select
	UNNEST (generate_series(100)) as id,
	round(random()* 100) as score,
);	
	
	