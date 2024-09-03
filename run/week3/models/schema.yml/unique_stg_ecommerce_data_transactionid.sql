select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    transactionid as unique_field,
    count(*) as n_records

from ECOMMERCE.ECOMM.stg_ecommerce_data
where transactionid is not null
group by transactionid
having count(*) > 1



      
    ) dbt_internal_test