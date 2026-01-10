USE AdventureWorks2025



SELECT
    YEAR(OrderDate) AS Year,
    COUNT(SalesOrderID) AS OrderCount,
    SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY Year ASC;