-- SELECT * FROM northwind.product;

SELECT 
    ProductID, ProductName, ListPrice - UnitCost AS Profit
FROM
    product
ORDER BY Profit DESC;