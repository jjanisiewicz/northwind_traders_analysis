with 	
sales1 as 
	(
	select 
		od.orderID 
		,p.productName
		,od.unitPrice * od.quantity as sales 	
	from order_details od  
	join products p on p.productID = od.productID 
	order by 3 asc
	),
sales2 as
	(
	select 
		productName
		,sum(sales)					as sum_sales
	from sales1 
	group by 1 
	order by sum_sales asc
	 ),
sales3 as
	(
	select 
		productName	
		,sum_sales
		,sum(sum_sales) over ()		as total_sales		
	from sales2	
	group by 1, 2 
	)	
	select 
		productName 
		,sum_sales
		,total_sales
		,round((sum_sales / total_sales) * 100, 2 )	as prc_of_total_sales 
	from sales3 	
	limit 10 