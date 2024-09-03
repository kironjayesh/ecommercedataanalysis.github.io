WITH customer AS (
    SELECT * FROM ECOMMERCE.ECOMM.stg_ecommerce_data
)

SELECT
    customerid, 
    customername, 
    customercity, 
    customercountry
FROM customer
ORDER BY customerid