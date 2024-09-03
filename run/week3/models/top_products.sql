
  
    

        create or replace transient table ECOMMERCE.ECOMM.top_products
         as
        (with sales as (
    select
        productname, 
        quantity, 
        customercountry
    from stg_ecommerce_data
),

top_sales as (
    select 
        productname, 
        customercountry, 
        SUM(quantity) as total_quantity
    from stg_ecommerce_data
    group by productname, customercountry
)

SELECT TOP 5 * from top_sales
WHERE customercountry='USA'
ORDER BY total_quantity DESC
        );
      
  