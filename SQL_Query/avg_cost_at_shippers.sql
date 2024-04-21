select 
	o.shipperID
	,s.companyName 
	,count(orderID)						as orders_of_shippers  
	,round(avg(o.freight) , 2 )			as avg_shipping_cost
from orders o 	
join shippers s on o.shipperID = s.shipperID  
group by 1 , 2  
order by 4 desc 
