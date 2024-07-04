select 
prices.product_id,
ifnull(round(sum(prices.price*unitssold.units)/sum(unitssold.units),2),0) average_price 
FROM PRICEs left join UnitsSold 
on prices.product_id=UnitsSold.product_id
where purchase_date between start_date and end_date or purchase_date is null
group by product_id
