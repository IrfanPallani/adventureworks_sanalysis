USE AdventureWorks2025


SELECT
    st.Name AS Region,
    CASE 
        WHEN s.BusinessEntityID IS NULL THEN 'Individual'
        ELSE 'Store'
    END AS CustomerType,
    SUM(soh.TotalDue) / COUNT(soh.SalesOrderID) AS AvgSalesPerOrder
FROM Sales.SalesOrderHeader soh
    JOIN Sales.Customer C
    ON soh.CustomerID = c.CustomerID
    LEFT JOIN Sales.Store s
    ON c.StoreID = s.BusinessEntityID
    JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name,
    CASE 
        WHEN s.BusinessEntityID IS NULL THEN 'Individual'
        ELSE 'Store'
    END
ORDER BY AvgSalesPerOrder DESC