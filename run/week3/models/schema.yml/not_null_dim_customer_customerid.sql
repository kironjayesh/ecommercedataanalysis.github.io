select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select customerid
from ECOMMERCE.ECOMM.dim_customer
where customerid is null



      
    ) dbt_internal_test