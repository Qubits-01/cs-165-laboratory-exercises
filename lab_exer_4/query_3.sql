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

CREATE OR REPLACE VIEW productList2 AS
    SELECT 
        pl1.ProductID, pl1.ProductName, pl1.CategoryName, od.OrderID
    FROM
        productList1 AS pl1
            INNER JOIN
        orderdetail AS od USING (ProductID)
    ORDER BY od.OrderID;

SELECT 
    pl2.ProductID, pl2.ProductName, pl2.CategoryName, o.ShipCity
FROM
    productList2 AS pl2
        INNER JOIN
    northwind.order AS o USING (OrderID)
ORDER BY o.ShipCity;