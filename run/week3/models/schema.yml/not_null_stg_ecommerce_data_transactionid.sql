select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select transactionid
from ECOMMERCE.ECOMM.stg_ecommerce_data
where transactionid is null



      
    ) dbt_internal_test