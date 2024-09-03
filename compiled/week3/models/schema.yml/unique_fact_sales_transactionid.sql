
    
    

select
    transactionid as unique_field,
    count(*) as n_records

from ECOMMERCE.ECOMM.fact_sales
where transactionid is not null
group by transactionid
having count(*) > 1


