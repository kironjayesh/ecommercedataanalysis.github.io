
  
    

        create or replace transient table ECOMMERCE.ECOMM.stg_ecommerce_data
         as
        (WITH ecommerce_data AS (
    SELECT * FROM ECOMMERCE.ECOMM.RAW_ECOMMERCE_DATA
)

SELECT * FROM ecommerce_data
        );
      
  