--Provide a query showing only the Employees who are "Sales Agents".

SELECT * FROM EMPLOYEE
WHERE Title LIKE '%Sales%' AND Title LIKE '%Agent%';