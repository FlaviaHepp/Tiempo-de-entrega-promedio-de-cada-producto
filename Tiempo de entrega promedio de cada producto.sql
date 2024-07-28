USE AdventureWorks2019
GO

--Se requiere conocer el tiempo de entrega promedio de cada producto

SELECT ppv.BusinessEntityID, ppv.ProductID, pp. Name AS Producto, ppv.AverageLeadTime AS Tiempo_entrega_promedio
FROM Purchasing.ProductVendor ppv
INNER JOIN Production.Product pp
ON ppv.ProductID = pp.ProductID