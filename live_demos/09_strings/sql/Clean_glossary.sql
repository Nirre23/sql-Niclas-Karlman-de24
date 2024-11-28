CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (
SELECT
	UPPER(TRIM(sql_word)) AS sql_word,
	UPPER(TRIM(regexp_replace(description, ' +', ' ', 'g'))) AS description,
	UPPER(TRIM(regexp_replace(example, ' +', ' ', 'g'))) AS example
FROM
	staging.sql_glossary
);

SELECT
	*
from
	refined.sql_glossary;

UPDATE
	refined.sql_glossary
SET
	description = regexp_replace(trim(UPPER(description)),
	' +',
	' ',
	'g'),
	example = regexp_replace(trim(UPPER(example)),
	' +',
	' ',
	'g');

a
    
    UPDATE
	refined.sql_glossary
SET
	description = UPPER(SUBSTRING(description, 1, 1)) || LOWER(SUBSTRING(description, 2)),
	example = UPPER(SUBSTRING(example, 1, 1)) || LOWER(SUBSTRING(example, 2));
