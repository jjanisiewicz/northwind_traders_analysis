/* products with the most quantity */
select 
	p.productName 
	,od.quantity 
from orders o
join order_details od  on o.orderID = od.orderID  
join products p on od.productID = p.productID 
order by 2 desc 
limit 10


/* products with the worsted quantity  */

select 
	p.productName 
	,od.quantity 
from orders o
join order_details od  on o.orderID = od.orderID  
join products p on od.productID = p.productID 
where od.quantity < 10 
order by 2 
