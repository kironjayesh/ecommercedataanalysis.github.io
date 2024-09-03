with product_category as (
        select * 
        from ECOMMERCE.ECOMM.product_category_sales
    ),

    rank_product_category as (
        select productcategory
        from product_category
        order by total_sales_amount desc
    )

select 
    productcategory,
    productsubcategory,
    SUM(totalamount) as total_sales
from ECOMMERCE.ECOMM.stg_ecommerce_data
where productcategory = (select TOP 1 * from rank_product_category)
group by productsubcategory, 
         productcategory