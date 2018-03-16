/*Team Name: BGS - Chaela Hood, Austin Henry, and Lauren Mariano*/

SELECT *
FROM Products

SELECT *
FROM Customers

SELECT *
FROM Orders

SELECT *
FROM Employees

SELECT *
FROM Stores

SELECT *
FROM Charities

/*How many Free Runs have been sold?*/
SELECT SUM(O.Quantity) AS Free_Run_Sales, O.ProductID, P.ProductName
FROM Orders AS O
JOIN Products AS P ON O.ProductID = P.ProductID
WHERE P.ProductName = 'Free Runs'
GROUP BY O.ProductID, P.ProductName

/*Which products have been purchased and which haven't? We need to use an outer join because we want to know all of the products even if there isn't a corresponding OrderID with the product*/
SELECT P.ProductID, P.ProductName, O.OrderID
FROM Products AS P
LEFT OUTER JOIN Orders AS O
ON P.ProductID = O.ProductID

/*Select the orders where the donation is greater than the average donation for the orders*/
SELECT OrderID, Donation
FROM Orders
WHERE Donation > 
(SELECT AVG(Donation)
FROM Orders)
GROUP BY OrderID, Donation;