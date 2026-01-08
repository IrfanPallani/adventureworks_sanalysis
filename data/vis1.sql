USE AdverntureWorks


SELECT *
FROM Production.ProductCategory
SELECT *
FROM Production.ProductSubcategory
SELECT *
FROM Production.Product



SELECT
    pc.Name AS Category,
    COUNT(DISTINCT p.ProductID) AS ProductCount
FROM Production.ProductCategory pc
    INNER JOIN Production.ProductSubcategory ps ON pc.ProductCategoryID=ps.ProductCategoryID
    INNER JOIN Production.Product p ON ps.ProductSubcategoryID = p.ProductSubcategoryID
GROUP BY pc.Name
ORDER BY ProducTCount DESC



SELECT
    pc.Name AS CategoryName,
    ps.Name AS SubcategoryName,
    COUNT(DISTINCT p.ProductID) AS ProductCount
FROM Production.ProductCategory pc
    JOIN Production.ProductSubcategory ps ON pc.ProductCategoryID=ps.ProductCategoryID
    JOIN Production.Product p ON ps.ProductSubcategoryID = p.ProductSubcategoryID
WHERE pc.Name = 'Bikes'
GROUP BY pc.Name, ps.Name

