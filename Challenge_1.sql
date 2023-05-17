/*
Created By: JC
Create Date: 5/17/2023
Description: Searching transaction between 2011 and 2012 and the amount of the money during that time
*/

SELECT 
	COUNT(*) AS [2011-2012 Transaction], 
	SUM(total) AS [2011-2012 Total]
FROM
	Invoice
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
