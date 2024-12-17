--wildcard selection /select star /select all
--Får alla kolumner och respektive rader 
-- FROM THE TABLE/VIEW: MAIN.PAYMENT MAIN = SCHEMA_NAME 
-- WHEN USING MAIN.PAYMENT WE MEAN SCHEMA.TABLE_NAME
SELECT * from main.payment p ;

-- without specyfing the schema, duckdb will look at main cehama by default
SELECT * FROM payment;

SELECT * from sakila.main.payment p;

-- limits returned rows to 10
SELECT
	*
from
	main.payment p
limit 10;


-- chooses which columnes to include
SELECT
	 customer_id,
	amount
from
	main.payment p;
	
-- EXCLUDE tar bort de kulmner jag skrvit i paranteserna
SELECT
	* EXCLUDE (customer_id,
	amount)
from
	main.payment p;
	
-- aggregation funtions --> many-to-one-mapping
SELECT  from main.payment p;

SELECT
	COUNT(*) as number_payments,
	min(amount) as min,
	max(amount) as max,
	round(avg(amount)) as mean,
	median(amount) as median
from
	main.payment p;
	
-- filter data 
SELECT * from main.payment p
where amount > 4.2
order by amount ;

--create a new column with amount classifications
SELECT amount,
	case
		when amount < 3.5 then 'Low cost'
		when amount < 7.5 then 'Medium cost'
		else 'High cost'
	end as "Cost level"
from
	main.payment p;

create view if not exists main.payment_level as 
SELECT *,amount,
	case
		when amount < 3.5 then 'Low cost'
		when amount < 7.5 then 'Medium cost'
		else 'High cost'
	end as "Cost level"
from
	main.payment p;

SELECT * from main.payment_level













