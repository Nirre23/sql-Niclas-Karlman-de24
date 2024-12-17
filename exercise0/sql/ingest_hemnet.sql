CREATE TABLE    
    IF NOT EXISTS hemnet AS 
SELECT
	*
FROM
	read_csv_auto('C:\Users\nirre\github\sql-Niclas-Karlman-de24\exercise0\data\hemnet.csv')
;
