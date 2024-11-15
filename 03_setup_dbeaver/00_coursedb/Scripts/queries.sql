SELECT * from main.ovning1
WHERE content_type = 'exercise';

SELECT * FROM main.ovning1 
WHERE content_type = 'lecture';

select * FROM main.ovning1 
WHERE week = 48;

select * FROM main.ovning1 
WHERE week BETWEEN 47 AND 49
ORDER by week ASC 
;

SELECT COUNT(*) as lecture_count
from main.ovning1 
WHERE content_type = 'lecture';


SELECT COUNT(DISTINCT content_type) as total_contents
from main.ovning1
where content_type != 'lecture';

SELECT DISTINCT content_type
from main.ovning1 o ;

DELETE FROM main.ovning1 
where id = 2;

SELECT * FROM 
main.ovning1 o ;

INSERT into main.ovning1(
id, content ,week ,content_type)
values(
2, '02_setup_duckdb', 46, 'lecture');

SELECT * FROM main.ovning1
order by week ASC ;

INSERT INTO main.ovning1(
id,content,week,content_type)
values(22, 'remote', 46, 'lecture')

SELECT * FROM main.ovning1 
where content = 'remote';

SELECT
	*
FROM
	main.ovning1 o ;

SELECT * FROM main.ovning1 o WHERE content_type = 'exercise';

SELECT
	*
FROM
	main.ovning1 o
WHERE
	content_type = 'lecture';

SELECT
	*
FROM
	main.ovning1 o
WHERE
	week = 48;


SELECT
	*
FROM
	main.ovning1 o
WHERE
	week BETWEEN 47 AND 49;
	
SELECT
	COUNT(*) AS total_lectures
FROM
	main.ovning1 o
WHERE
	content_type = 'lecture';

SELECT
	COUNT(DISTINCT content_type) AS unique_content_types
FROM
	main.ovning1 o ;

SELECT
	content_type , 
	COUNT(*) AS content_count
FROM
	main.ovning1 o
GROUP BY
	content_type
ORDER BY 
	content_type ASC
LIMIT 1;

SELECT
	*
FROM
	main.ovning1 o ;

UPDATE
	main.ovning1
SET
	content = 'tenta',
	week = 51,
	content_type = 'exam'
WHERE
	id = 21;

SELECT * FROM main.ovning1 o 
ORDER BY week ASC ;

DELETE
FROM
	main.ovning1
WHERE
	id = 2; 
INSERT
	INTO
	main.ovning1(id,
	content,
	week,
	content_type)
VALUES(2,
'02_setup_duckdb',
46,
'lecture');

SELECT * FROM main.ovning1 o ORDER BY week ASC ;





