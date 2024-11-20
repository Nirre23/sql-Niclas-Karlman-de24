SELECT
	42 as meaning_of_life;
	
values (1), (2), (3);

CREATE TABLE IF NOT EXISTS people_records AS(
SELECT
	*
FROM
	(
VALUES 
(1, 'Johan'),
(2, 'Niclas'),
(3, 'Eva')) as people(id,name));

desc;
