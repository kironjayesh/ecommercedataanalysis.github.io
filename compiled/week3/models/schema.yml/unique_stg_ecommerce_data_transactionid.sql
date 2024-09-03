
    
    

select
    transactionid as unique_field,
    count(*) as n_records

from ECOMMERCE.ECOMM.stg_ecommerce_data
where transactionid is not null
group by transactionid
having count(*) > 1


