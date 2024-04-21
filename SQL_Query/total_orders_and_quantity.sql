select 
	count(orderID)	as total_orders 
	,total_quantity
from orders 
inner join 	
	(
select 
	sum(quantity)  as total_quantity 
from order_details 
	) total_quantity 
group by 2 	

	


