/*
Created By: Azjinsol 
Create Date: 5/17/2023
Description: List of customers' transaction and employees and the average of it
*/

SELECT
	c.FirstName AS [CustomerFN],
	c.LastName AS [CustomerLN],
	e.FirstName AS [EmployeeFN],
	e.LastName AS [EmployeeLN],
	i.total
FROM
	Invoice i 
INNER JOIN 
	Customer c
ON 
	i.CustomerId = c.CustomerId
INNER JOIN 
	Employee e 
ON 
	e.EmployeeId = c.SupportRepId
WHERE 
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER BY 
	i.total DESC 
	
