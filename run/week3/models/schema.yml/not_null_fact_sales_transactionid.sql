select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select transactionid
from ECOMMERCE.ECOMM.fact_sales
where transactionid is null



      
    ) dbt_internal_test