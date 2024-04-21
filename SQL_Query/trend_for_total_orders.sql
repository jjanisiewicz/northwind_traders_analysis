select 
	dayname(orderDate)			as orders_day 
	,count(distinct orderID)	as total_orders 
from orders 
group by 1 
order by 1 


