-- add column salary sek monthly and salary sek yearly

alter table main.cs add column salary_sek_yearly INTEGER;

ALTER TABLE main.cs ADD COLUMN salary_sek_monthly INTEGER;

desc table cs;

SELECT salary_sek_monthly from main.cs c 

update
	main.cs
set
	salary_sek_yearly = salary_in_usd * 10.9,
	salary_sek_monthly = (salary_in_usd * 10.9)/ 12;

select
	salary_sek_monthly,
	salary_sek_yearly
from
	main.cs c ;

ALTER TABLE main.cs ADD COLUMN salary_level ENUM('Low','Medium','High','Insanely high');


ALTER TABLE main.NEW ADD COLUMN sek_m INTEGER;

ALTER TABLE main.NEW ADD COLUMN sek_year INTEGER;
DESC TABLE NEW;

SELECT sek_m,sek_year FROM main.NEW n ;

ALTER TABLE main.NEW ADD COLUMN salary_level VARCHAR;







