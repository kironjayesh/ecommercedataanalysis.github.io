select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select productid
from ECOMMERCE.ECOMM.dim_product
where productid is null



      
    ) dbt_internal_test