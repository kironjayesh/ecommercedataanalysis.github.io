WITH customer_dim as (
    SELECT  
        customerid, 
        customername, 
        customercity, 
        customercountry
    FROM ECOMMERCE.ECOMM.dim_customer
), 

    date_dim as (
        SELECT  
            date, 
            DayOfWeek, 
            Month, 
            Year
        FROM ECOMMERCE.ECOMM.dim_date
    ), 

    sales_data as (
        SELECT
            s.transactionid, 
            s.customerid,
            s.customername,
            s.date, 
            SUM(s.totalamount) as total_sales_amount
        FROM ECOMMERCE.ECOMM.stg_ecommerce_data s
        GROUP BY 
            s.transactionid,  
            s.customerid,
            s.customername,
            s.date
    )

SELECT 
    sd.transactionid, 
    cd.customerid,
    cd.customername,
    dd.date,
    sd.total_sales_amount
FROM sales_data as sd
JOIN customer_dim cd ON sd.customerid = cd.customerid and sd.customername = cd.customername
JOIN date_dim dd ON sd.date = dd.date