
  
    

        create or replace transient table ECOMMERCE.ECOMM.dim_product
         as
        (WITH product AS (
    SELECT * FROM ECOMMERCE.ECOMM.stg_ecommerce_data
)

SELECT
    productid, 
    productname, 
    productcategory, 
    productsubcategory,
    unitprice 
FROM product
ORDER BY productid
        );
      
  