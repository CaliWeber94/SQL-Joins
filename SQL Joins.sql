/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT * FROM Products as P INNER JOIN Categories as C ON P.CategoryID = C.CategoryID WHERE P.CategoryID = "1";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT p.name, p.price, r.rating FROM Products as P INNER JOIN Reviews as R ON P.ProductID = R.ProductID WHERE R.Rating = "5";
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT E.FirstName, E.LastName, Sum(Quantity) as "Total Sold" FROM Employees as E INNER JOIN Sales as S ON E.EmployeeID = S.EmployeeID GROUP BY E.EmployeeID ORDER BY Sum(Quantity) DESC;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT D.Name, C.Name FROM Categories as C INNER JOIN Departments as D ON C.DepartmentID = D.DepartmentID WHERE C.Name = "appliances" OR C.Name = "games";
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT sum(s.Quantity) as "Total Number Sold", sum(s.quantity * p.price) as "Total price sold", P.name as "CD Name"
FROM Products as P INNER JOIN Sales as S ON p.ProductID = S.productID WHERE P.ProductID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, R.reviewer, r.rating, r.comment FROM Products as P INNER JOIN Reviews as R on P.ProductID  = R.ProductID 
WHERE p.Name = "visio tv" AND r.rating < 2;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
