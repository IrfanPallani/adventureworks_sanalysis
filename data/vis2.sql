USE AdverntureWorks


SELECT
    pc.Name AS Category,
    SUM(sod.LineTotal) AS Totalsales
FROM Sales.SalesOrderDetail sod
    JOIN Production.Product p
    ON sod.ProductID = p.ProductID
    JOIN Production.ProductSubcategory psc
    ON p.ProductSubcategoryID = psc.ProductSubcategoryID
    JOIN Production.ProductCategory pc
    ON psc.ProductCategoryID = pc.ProductCategoryID

GROUP BY pc.Name
ORDER BY Totalsales DESC