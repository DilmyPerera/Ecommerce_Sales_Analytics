-- Query 4: Revenue by day of the week
SELECT 
    f.DayOfWeek,
    ROUND(SUM(f.TotalPrice), 2) AS Revenue
FROM fact_sales f
GROUP BY f.DayOfWeek
ORDER BY 
    CASE f.DayOfWeek 
        WHEN 'Monday' THEN 1
        WHEN 'Tuesday' THEN 2
        WHEN 'Wednesday' THEN 3
        WHEN 'Thursday' THEN 4
        WHEN 'Friday' THEN 5
        WHEN 'Saturday' THEN 6
        WHEN 'Sunday' THEN 7
    END;