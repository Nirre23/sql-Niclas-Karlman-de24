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
	
SELECT * FROM refined.sql_glossary sg; 