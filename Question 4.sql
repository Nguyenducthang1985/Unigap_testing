--CREATE TABLE Orders (
--    Order_ID INT PRIMARY KEY,
--    Date_Order DATE,
--    Good_Type NVARCHAR(50),
--    Good_Amount BIGINT,
--    Client_ID INT
--);


--INSERT INTO Orders (Order_ID, Date_Order, Good_Type, Good_Amount, Client_ID) VALUES
--(10, '2019-05-01', 'Computer', 10000000, 88),
--(24, '2020-06-06', 'Laptop', 8000000, 123),
--(35, '2020-10-07', 'Monitor', 3000000, 10);


--CREATE TABLE Order_Delivery (
--    Order_ID INT,
--    Date_Delivery DATE,
--    Delivery_Employee_Code NVARCHAR(10)
--);


--INSERT INTO Order_Delivery (Order_ID, Date_Delivery, Delivery_Employee_Code) VALUES
--(15, '2020-07-06', '1a'),
--(2, '2017-04-22', '5c'),
--(3, '2018-11-09', '6e');

select * from Order_Delivery
select * from Orders

--1. Count number of unique client order and number of orders by order month.
SELECT COUNT(DISTINCT Client_ID) AS NumberOfUniqueClients
FROM Orders;
SELECT 
    YEAR(Date_Order) AS Order_Year,
    MONTH(Date_Order) AS Order_Month,
    COUNT(*) AS NumberOfOrders
FROM Orders
GROUP BY YEAR(Date_Order), MONTH(Date_Order)
ORDER BY Order_Year, Order_Month;

--2. Get list of client who have more than 10 orders in this year.
SELECT Client_ID, COUNT(*) AS Order_Count
FROM Orders
WHERE YEAR(Date_Order) = YEAR(GETDATE())
GROUP BY Client_ID
HAVING COUNT(*) > 10

--3. From the above list of client: get information of first and second last order of client (Order date,
--good type, and amount) (KHÔNG LÀM ĐƯỢC)





--4. Calculate total good amount and Count number of Order which were delivered in Sep.2019
SELECT 
    SUM(o.Good_Amount) AS Total_Good_Amount,
    COUNT(*) AS Number_Of_Orders
FROM Orders o
INNER JOIN Order_Delivery d ON o.Order_ID = d.Order_ID
WHERE 
    YEAR(d.Date_Delivery) = 2019
    AND MONTH(d.Date_Delivery) = 9;


--5. Assuming your 2 tables contain a huge amount of data and each join will take about 30 hours,
--while you need to do daily report, what is your solution? (KHÔNG LÀM ĐƯỢC)
