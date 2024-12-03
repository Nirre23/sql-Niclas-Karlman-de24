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
select product_name,amount from synthetic.sales_feb
order by amount desc;

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


