with 
total_orders as 
 	(
 	select
 		count(orderID)	as total_orders
 	from orders 
 	),
orders_per_customers	as
	(
	 select
		customerID
		,count(orderID)			as orders 	
	from orders 
	group by 1  
	order by 2 desc 
	 )
	select 
		*
		,round((orders / total_orders) * 100, 2 ) as prc_share 
	from orders_per_customers
	cross join total_orders                     
	
	
	 
	
	
	
	
	
	
	
 




