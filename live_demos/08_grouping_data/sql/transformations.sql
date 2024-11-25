-- id --> food
-- remove column googleTopic
-- year column
-- week_id --> week
-- value --> number_of_searches
CREATE table if not exists cleaned_food as ( 
SELECT
	id as food, 
	SUBSTRING(week_id,1,4) as year, --slicing som i python-- week_id[:4]
	value as number_of_searches,
FROM
	main.food f) ;

desc;




	
