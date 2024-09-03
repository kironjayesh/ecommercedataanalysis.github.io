
  
    

        create or replace transient table ECOMMERCE.ECOMM.product_category_sales
         as
        (with sales as (
    select
        productcategory, 
        totalamount
    from stg_ecommerce_data
)

SELECT
    productcategory, 
    SUM(totalamount) as total_sales_amount
FROM sales
GROUP BY productcategory
        );
      
  