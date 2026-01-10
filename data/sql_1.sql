USE AdventureWorks2025


SELECT
    pc.Name AS CategoryName,
    ps.Name AS SubcategoryName,
    COUNT(DISTINCT p.ProductID) AS ProductCount
FROM Production.ProductCategory pc
    JOIN Production.ProductSubcategory ps ON pc.ProductCategoryID=ps.ProductCategoryID
    JOIN Production.Product p ON ps.ProductSubcategoryID = p.ProductSubcategoryID

GROUP BY pc.Name, ps.Name
ORDER BY ProducTCount DESC
