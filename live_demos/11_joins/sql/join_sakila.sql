desc table plants

desc table main.plant_care 

SELECT * from main.plants p 

SELECT * from main.plant_care pc

-- left join
-- Gets all from left table,with or without match in right table
-- without match --> null on right columns
select
	p.plant_id ,
	p.plant_name,
	p.type ,
	pc.water_schedule ,
	pc.sunlight
from
	main.plants p
left join main.plant_care pc on
	p.plant_id = pc.plant_id ;

-- right join
select
	p.plant_id ,
	p.plant_name,
	p.type ,
	pc.water_schedule ,
	pc.sunlight
from
	main.plants p
right join main.plant_care pc on
	p.plant_id = pc.plant_id ;

-- Inner join -gemensamt från båda tabellerna, kan inte få NULL

select
	p.plant_id ,
	p.plant_name,
	p.type ,
	pc.water_schedule ,
	pc.sunlight
from
	main.plants p
inner join main.plant_care pc on
	p.plant_id = pc.plant_id ;

-- Full join, allt från båda tabellerna, får NULL där det inte finns match
select
	p.plant_id ,
	p.plant_name,
	p.type ,
	pc.water_schedule ,
	pc.sunlight
from
	main.plants p
full join main.plant_care pc on
	p.plant_id = pc.plant_id;

SELECT
	p.plant_name ,
	p.type ,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p 
LEFT JOIN	main.plant_care pc ON p.plant_id = pc.plant_id ;


SELECT
	pc.water_schedule ,
	pc.sunlight ,
	p.TYPE,
	p.plant_name
FROM
	main.plant_care pc
LEFT JOIN	main.plants p ON p.plant_id = pc.plant_id ;

SELECT FROM main.p

SELECT
	p.plant_id ,
	p.type,
	p.plant_name ,
	pc.plant_id ,
	pc.water_schedule ,
	pc.sunlight
FROM
	main.plants p
left join main.plant_care pc on
	p.plant_id = pc.plant_id 

SELECT
	pc.water_schedule ,
	pc.sunlight,
	pc.plant_id ,
	p.plant_id ,
	p.type,
	p.plant_name ,
from
	main.plant_care pc
left join main.plants p on
	p.plant_id = pc.plant_id 
	
	desc table main.plants 
	
	
	
	
	
	
	
	
	
	
	
	
	
	