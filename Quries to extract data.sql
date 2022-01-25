use sales
select *
from customers

select *
from transactions
where market_code='Mark001'
order by product_code


select count(*)
from transactions
where market_code='Mark00'


select T.* ,D.*  
from transactions T inner join date D
on D.date=T.order_date
where D.year=2020


select sum(T.sales_amount)  as 'total sales amount'
from transactions T inner join date D
on D.date=T.order_date
where D.year=2018


select sum(T.sales_amount)  as 'total sales amount'
from transactions T inner join date D
on D.date=T.order_date
where D.year=2018 and T.market_code='mark001'


select distinct product_code
from transactions 
where market_code='mark001'