USE AdventureWorks2025



SELECT
    YEAR(OrderDate) as År,
    SUM(TotalDue) AS Försäljning,
    COUNT(*) as Ordrar
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY År