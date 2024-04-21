/* which category brought the most sales */ 


select 
	c.categoryName 
	,sum(od.unitPrice * od.quantity)		as sales 
from order_details od 
join products p on p.productID = od.productID 
join categories c on p.categoryID = c.categoryID 
group by 1
order by 2 desc 
limit 10 

