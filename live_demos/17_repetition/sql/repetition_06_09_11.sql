create schema if not exists sql;

SELECT * from information_schema.schemata

create table if not exists sql.exercises(
study_week INT primary key,
exercise TEXT,
study BOOLEAN,
);

create table if not exists sql.lectures(
study_week INT primary key,
content text,
lecture text,
study BOOLEAN,
);

desc

INSERT INTO
    sql.lectures
VALUES
    (
        1,
        'intro, query, ingest csv, CLI, dbeaver, table, select',
        '00-04',
        TRUE
    ),
    (
        2,
        'filtering, CRUD, conditionals, sorting, functions, grouping',
        '05-08',
        TRUE
    ),
    (
        3,
        'grouping, strings, regexp, set operations, performing joins, querying multiple tables',
        '09-11',
        FALSE
    ),
    (
        4,
        'window functions, CTEs, connect duckdb to Python, data security, SQL injection',
        '12-14',
        FALSE
    ),
    (
        5,
        'duckdb tips and tricks, repetition',
        '15-16',
        TRUE
    ),
    (6, 'exam', '17', FALSE);
   
INSERT INTO
    sql.exercises
VALUES
    (1, '0', TRUE),
    (2, '1', TRUE),
    (3, '2', TRUE),
    (4, '3', TRUE),
    (5, 'old exam', TRUE);   
   
SELECT * from sql.lectures l

SELECT * from sql.exercises e 

-- wnat to uodate week 4,6
SELECT * from sql.lectures l where study_week in (4,6);

update
	sql.lectures
set
	study = TRUE
where
	study_week in (4, 6);

SELEct * from sql.lectures l 

-- matches strings case sensetive
select * from sql.lectures l where content ilike '%STrings%'

-- match insensetive
select * from sql.lectures l where LOWER(content) like '%strings%'


SELECT
	*
from
	sql.lectures l
left join sql.exercises e on
	l.study_week = e.study_week; 

SELECT
	l.study_week ,l.content , l.lecture , e.exercise 
from
	sql.lectures l
left join sql.exercises e on
	l.study_week = e.study_week; 

SELECT
	*
from
	sql.lectures l
right join sql.exercises e on
	l.study_week = e.study_week; 

SELECT
	*
from
	sql.lectures l
inner join sql.exercises e on
	l.study_week = e.study_week; 


CREATE SCHEMA IF NOT EXISTS hej;

CREATE TABLE IF NOT EXISTS hej.lektioner(
vecka INT PRIMARY KEY,
content text,
lektion text,
studerat BOOLEAN
);

INSERT INTO hej.lektioner
VALUES 
(1,' Intro, query, ingest csv, CLI, dbeaver, table, select','00-04',TRUE ),
(2,' filtering, CRUD, conditionals, sorting, functions, grouping', '05-08', TRUE ),
(3,' grouping, strings, regexp,set operations,performing joins, querying tables', '09-11', FALSE ),
(4,' window functions, CTES, connect duckdb to python, data security, SQL injection', '12-14',FALSE ),
(5,' duckdb, tips and tricks, repetition','15-16', TRUE),
(6,' exam', '17', FALSE);

INSERT INTO hej.lektioner
VALUES 
(1, 'Intro, query, ingest csv, CLI, dbeaver, table, select', '00-04', TRUE),
(2, 'filtering, CRUD, conditionals, sorting, functions, grouping', '05-08', TRUE),
(3, 'grouping, strings, regexp, set operations, performing joins, querying tables', '09-11', FALSE),
(4, 'window functions, CTES, connect duckdb to python, data security, SQL injection', '12-14', FALSE),
(5, 'duckdb, tips and tricks, repetition', '15-16', TRUE),
(6, 'exam', '17', FALSE);


SELECT * FROM hej.lektioner WHERE vecka BETWEEN 3 AND 5









