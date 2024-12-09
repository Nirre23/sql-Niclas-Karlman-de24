SELECT * FROM synthetic.sales_jan
union 	
select * from synthetic.sales_feb;

SELECT * FROM synthetic.sales_jan

select DISTINCT(product_name) from synthetic.sales_feb;
SELECT * exclude(sale_date) from synthetic.sales_jan
union
select * exclude(sale_date) from synthetic.sales_feb;

SELECT * FROM synthetic.sales_jan
union all
select * from synthetic.sales_feb;

SELECT * FROM synthetic.sales_jan
union
select * from synthetic.sales_feb;

SELECT * FROM synthetic.sales_jan
intersect
select * from synthetic.sales_feb;

SELECT product_name,amount FROM synthetic.sales_jan
except
select product_name,amount from synthetic.sales_feb;

SELECT product_name,amount FROM synthetic.sales_feb sf 
except
select product_name,amount from synthetic.sales_jan sj ;


SELECT product_name,amount FROM synthetic.sales_jan
union all --behåller dubletter 
select product_name,amount from synthetic.sales_feb;

SELECT product_name,amount FROM synthetic.sales_jan
union --tar bort dubletter med samma produknamn
select product_name,amount from synthetic.sales_feb;

SELECT product_name,amount FROM synthetic.sales_jan
intersect -- ger oss endast det som finns i båda taballerna (monitor,300)
select product_name,amount from synthetic.sales_feb;

SELECT product_name,amount FROM synthetic.sales_jan
except 
select product_name,amount from synthetic.sales_feb;

SELECT * FROM synthetic.sales_jan
intersect -- ger oss det som är gemenstamt. --inget är gemensamt för sale_dates är olika 
select * from synthetic.sales_feb;

DESC TABLE synthetic.products;

SELECT
	p.product_name,
	p.category,
	s.supplier,
	s.total_amount
FROM
	synthetic.products p
LEFT JOIN synthetic.sales ON
	p.product_id = s.product_id;

.mode COLUMN
SELECT
	produdct_name
FROM
	synthetic.products p ;

SELECT product_name,amount FROM synthetic.sales_feb sf 
UNION	
SELECT product_name,amount FROM synthetic.sales_jan sj ;

SELECT product_name,amount FROM synthetic.sales_feb sf 
UNION all
SELECT product_name,amount FROM synthetic.sales_jan sj ;

SELECT product_name,amount FROM synthetic.sales_feb sf 
except	
SELECT product_name,amount FROM synthetic.sales_jan sj ;

DESC	TABLE synthetic.sales_jan 

SELECT
	sj.id,
	sj.product_name,
	sj.amount,
	sj.sale_date AS jan_date,
	sf.product_name AS feb_product,
	sf.amount AS feb_amount,
	sf.sale_date AS feb_sales
FROM
	synthetic.sales_jan sj
left JOIN synthetic.sales_feb sf ON
	sj.id = sf.id ;

SELECT * FROM synthetic.sales_feb sf 



