
  
    

        create or replace transient table ECOMMERCE.ECOMM.my_second_dbt_model
         as
        (-- Use the `ref` function to select from other models

select *
from ECOMMERCE.ECOMM.my_first_dbt_model
where id = 1
        );
      
  