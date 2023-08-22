--Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
    --Employee full name
    --Total number of customers assigned to each employee (even if it's zero)

SELECT 
E.FirstName || ' ' || E.LastName AS EmployeeName,
COUNT(C.customerId) AS AssignedCustomers
FROM Employee E
LEFT JOIN Customer C ON C.SupportRepId = E.EmployeeId
GROUP BY EmployeeName;