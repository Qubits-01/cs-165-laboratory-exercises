-- SELECT * FROM northwind.product;

SELECT 
    ProductID,
    ProductName,
    ListPrice,
    UnitCost,
    ListPrice - UnitCost AS Profit
FROM
    product
ORDER BY ProductName;