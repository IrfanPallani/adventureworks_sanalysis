USE AdverntureWorks

SELECT * FROM Production.ProductCategory
SELECT * FROM Production.ProductSubcategory 
SELECT *FROM Production.Product



SELECT
    pc.Name AS Category,
    COUNT(DISTINCT p.ProductID) as ProductCount
FROM Production.ProductCategory pc
JOIN Production.ProductSubcategory ps ON pc.ProductCategoryID=ps.ProductCategoryID
JOIN Production.Product p ON ps.ProductSubcategoryID = p.ProductSubcategoryID
GROUP BY pc.Name



SELECT
    pc.Name AS CategoryName,
    ps.Name AS SubcategoryName,
    COUNT(DISTINCT p.ProductID) as ProductCount
FROM Production.ProductCategory pc
JOIN Production.ProductSubcategory ps ON pc.ProductCategoryID=ps.ProductCategoryID
JOIN Production.Product p ON ps.ProductSubcategoryID = p.ProductSubcategoryID
WHERE pc.Name = 'Bikes'
GROUP BY pc.Name, ps.Name