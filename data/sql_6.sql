USE AdventureWorks2025


SELECT
    st.Name AS Region,
    SUM(soh.TotalDue) AS Sales,
    COUNT(DISTINCT soh.SalesOrderID) AS Custumers
FROM Sales.SalesOrderHeader soh
    JOIN Sales.Customer c
    ON soh.CustomerID = c.CustomerID
    JOIN Sales.SalesTerritory st
    ON c.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY Sales DESC