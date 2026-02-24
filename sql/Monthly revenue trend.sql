-- Query 2: Monthly revenue trend
SELECT 
    d.MonthYear,
    ROUND(SUM(f.TotalPrice), 2) AS Revenue
FROM fact_sales f
JOIN dim_date d ON f.DateKey = d.DateKey
GROUP BY d.MonthYear
ORDER BY d.MonthYear;