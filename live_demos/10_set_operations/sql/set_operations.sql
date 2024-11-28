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

SELECT * FROM synthetic.sales_jan
except 
select * from synthetic.sales_feb;



