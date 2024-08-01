-- Select unique_id from EmployeeUNI and name from Employees.
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
-- Left join to include all employees, matching with EmployeeUNI if possible.
LEFT JOIN EmployeeUNI
    ON Employees.id = EmployeeUNI.id;