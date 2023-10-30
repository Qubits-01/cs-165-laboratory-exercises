-- SELECT * FROM northwind.employee;

SELECT 
    FirstName, LastName, BirthDate
FROM
    employee
WHERE
    MONTH(BirthDate) = 7
ORDER BY BirthDate;