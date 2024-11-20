CREATE TABLE IF NOT EXISTS weekdays(
id Integer PRIMARY KEY,dag varchar, dag_nummer integer);

INSERT
	INTO
	weekdays (id, dag, dag_nummer)
VALUES
	(1, 'Måndag', 1),
	(2, 'Tisdag', 2),
	(3, 'Onsdag', 3),
	(4, 'Torsdag',4),
	(5, 'Fredag', 5),
	(6, 'Lördag', 6),
	(7, 'Söndag', 7);
	
SELECT * FROM main.weekdays w ;