CREATE SCHEMA IF NOT EXISTS refined;

CREATE Table if not exists refined.sql_glossary as 
(
select
	UPPER(TRIM(sql_word)) as sql_word,
	regexp_replace(trim(description),
	' +',
	' ',
	' g') as description,
	regexp_replace(trim(example),
	' +',
	' ',
	'g') as example
from
	staging.sql_glossary sg);

CREATE SCHEMA IF NOT EXISTS lower;

CREATE TABLE IF NOT EXISTS lower.sql_glossary AS  
SELECT 
	LOWER(trim(sql_word)) AS "SQL WORD",
	regexp_replace(trim(description), ' +',' ','g') AS description,
	regexp_replace(trim(example),'+',' ','g') AS example
FROM staging.sql_glossary;

SELECT * FROM lower.sql_glossary

	
SELECT * FROM refined.sql_glossary sg; 

CREATE schema if not exists exercise;

create table if not exists exercise.sql_glossary as 
( 
select upper(trim(sql_word)) as word, regexp_replace(trim(description),
' +',' ', ' g') as description,
regexp_replace(trim(example),
' +',' ',' g') as example from staging.sql_glossary sg); 

SELECT * from exercise.sql_glossary;
)

CREATE SCHEMA IF NOT EXISTS hej;

CREATE TABLE IF NOT EXISTS hej.sql_glossary AS 	
SELECT
lower(trim(sql_word)) AS sql_word,
regexp_replace(TRIM(description),' +',' ', ' g') AS description,
regexp_replace(TRIM(example),' +',' ',' g') AS example
FROM staging.sql_glossary sg ;

SELECT * FROM hej.sql_glossary;

CREATE SCHEMA IF NOT EXISTS l;

CREATE TABLE l.sql_glossary AS 
SELECT
UPPER(TRIM(sql_word)) AS sql_word,
regexp_replace(regexp_replace(TRIM(description),' +',' ','g') AS description,
regexp_replace(TRIM(example),' +',' ','g') jagAS example
FROM staging.sql_glossary sg ;

SELECT * FROM l.sql_glossary


CREATE SCHEMA IF NOT EXISTS nic;

CREATE TABLE IF NOT EXISTS nic.sql_glossary AS 
SELECT 
	UPPER(trim(sql_word)),
	regexp_replace(TRIM(description),' +',' ','g') AS description,
	regexp_replace(trim(example),' +',' ','g') AS example 
FROM staging.sql_glossary sg ;

SELECT * FROM nic.SQL_glossary;

SELECT * FROM staging.sql_glossary sg 

CREATE SCHEMA IF NOT EXISTS fixed;

CREATE TABLE IF NOT EXISTS fixed.sql_glossary AS 
SELECT 	
initcap()



