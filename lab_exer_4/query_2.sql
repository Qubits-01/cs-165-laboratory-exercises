CREATE OR REPLACE VIEW productList1 AS
    SELECT 
        p.ProductID, p.ProductName, c.CategoryName
    FROM
        product AS p
            INNER JOIN
        category AS c USING (CategoryID)
    WHERE
        c.CategoryName = 'Beverages'
    ORDER BY p.ProductID;

SELECT 
    pl1.ProductID, pl1.ProductName, pl1.CategoryName, od.OrderID
FROM
    productList1 AS pl1
        INNER JOIN
    orderdetail AS od USING (ProductID)
ORDER BY od.OrderID;