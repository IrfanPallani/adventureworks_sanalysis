USE AdventureWorks2025



SELECT
    pc.Name as Kategori,
    SUM(sod.LineTotal) AS Totalsales
FROM Sales.SalesOrderDetail sod
    JOIN Production.Product p
    ON sod.ProductID = p.ProductID
    JOIN Production.ProductSubcategory ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
    JOIN Production.ProductCategory pc
    ON ps.ProductCategoryID = pc.ProductCategoryID

GROUP BY pc.Name
ORDER BY Totalsales DESC