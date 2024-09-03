
    
    

select
    transaction_id as unique_field,
    count(*) as n_records

from ECOMMERCE.ECOMM.stg_ecommerce_data
where transaction_id is not null
group by transaction_id
having count(*) > 1


