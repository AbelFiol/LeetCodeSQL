-- Select the name of the employee and their bonus.
SELECT Employee.name, Bonus.bonus
FROM Employee
-- Perform a left join on the Employee and Bonus tables based on the employee ID.
LEFT JOIN Bonus ON Employee.empId = Bonus.empId
-- Filter the results to include only employees with a bonus less than 1000 or no bonus at all.
WHERE bonus < 1000 OR bonus IS NULL;