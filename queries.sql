SELECT * FROM CleanedSalesData;
SELECT count(DISTINCT CustomerName) FROM CleanedSalesData
SELECT SUM(TotalPrice) as total, Product FROM CleanedSalesData GROUP BY Product;
SELECT CustomerName FROM CleanedSalesData WHERE Region="North";
SELECT 
    A.Salesperson AS Salesperson1,
    A.Product AS Product1,
    B.Product AS Product2,
    A.Date AS Date1,
    B.Date AS Date2
FROM 
    CleanedSalesData A
JOIN 
    CleanedSalesData B
ON 
    A.Salesperson = B.Salesperson
    AND A.OrderID <> B.OrderID
LIMIT 10;

