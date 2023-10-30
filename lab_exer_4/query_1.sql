SELECT 
    p.ProductID, p.ProductName, c.CategoryName
FROM
    product AS p
        INNER JOIN
    category AS c USING (CategoryID)
WHERE
    c.CategoryName = 'Beverages'
ORDER BY p.ProductID;
