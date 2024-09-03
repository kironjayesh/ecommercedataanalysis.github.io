
  
    

        create or replace transient table ECOMMERCE.ECOMM.dim_date
         as
        (WITH 
    dates AS (
        SELECT * FROM ECOMMERCE.ECOMM.stg_ecommerce_data
    ),
    
    distinct_dates AS (
        SELECT DISTINCT date
        FROM dates
    )

SELECT 
    DISTINCT date as date, 
    EXTRACT(YEAR from date) AS Year,
    EXTRACT(MONTH from date) AS Month,
    DAYOFWEEK(date) as DayOfWeek, 
    EXTRACT(QUARTER from date) AS Quarter,
    CASE WHEN DAYOFWEEK(date) IN (0, 6) THEN TRUE ELSE FALSE END AS IsWeekend
FROM distinct_dates
ORDER BY date
        );
      
  