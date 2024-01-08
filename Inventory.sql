Create Database InventoryManagementDB;
use InventoryManagementDB;

-- Create ProductCategory Table
CREATE TABLE ProductCategory (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

-- Inserting sample values into ProductCategory table
Select * from ProductCategory;
Insert into ProductCategory(CategoryID,CategoryName)
values
(1001, 'Electronics'),
(1002, 'Clothing'),
(1003, 'Home and Living'),
(1004, 'Books'),
(1005, 'Beauty'),
(1006, 'Sports'),
(1007, 'Toys'),
(1008, 'Automotive'),
(1009, 'Jewelry'),
(1010, 'Furniture'),
(1011, 'Health and Fitness'),
(1012, 'Food and Beverages'),
(1013, 'Garden and Outdoor'),
(1014, 'Office Supplies'),
(1015, 'Pet Supplies'),
(1016, 'Music'),
(1017, 'Movies'),
(1018, 'Games'),
(1019, 'Travel'),
(1020, 'Art and Crafts');



-- Create Product Table
CREATE TABLE Product (
    PID INT PRIMARY KEY,
    PName VARCHAR(255) NOT NULL,
    SKU VARCHAR(50) NOT NULL,
    Quantity INT,
    Price DECIMAL(10, 2),
    Location VARCHAR(255),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES ProductCategory(CategoryID)
);
-- Inserting 20 sample values into Product table
INSERT INTO Product (PID, PName, SKU, Quantity, Price, Location, CategoryID) VALUES
(1, 'Laptop', 'LT1001', 50, 799.99, 'Warehouse A', 1001),
(2, 'Smartphone', 'SP2002', 100, 499.99, 'Store 1', 1001),
(3, 'Tablet', 'TB3003', 30, 299.99, 'Store 2', 1001),
(4, 'T-shirt', 'TS4004', 200, 19.99, 'Warehouse B', 1002),
(5, 'Jeans', 'JN5005', 150, 39.99, 'Store 1', 1002),
(6, 'Dress', 'DR6006', 80, 49.99, 'Store 3', 1002),
(7, 'Sofa', 'SF7007', 20, 499.99, 'Warehouse C', 1003),
(8, 'Coffee Table', 'CT8008', 40, 149.99, 'Store 2', 1003),
(9, 'Bed', 'BD9009', 15, 799.99, 'Warehouse A', 1003),
(10, 'Novel', 'NV10010', 300, 9.99, 'Store 4', 1004),
(11, 'Cookbook', 'CB11011', 120, 14.99, 'Store 3', 1004),
(12, 'Makeup Kit', 'MK12012', 80, 29.99, 'Store 5', 1005),
(13, 'Perfume', 'PF13013', 150, 49.99, 'Store 6', 1005),
(14, 'Running Shoes', 'RS14014', 90, 79.99, 'Store 7', 1006),
(15, 'Dumbbells', 'DB15015', 50, 29.99, 'Store 8', 1006),
(16, 'Teddy Bear', 'TB16016', 200, 14.99, 'Store 9', 1007),
(17, 'Car Battery', 'CB17017', 30, 99.99, 'Store 10', 1008),
(18, 'Diamond Ring', 'DR18018', 10, 999.99, 'Store 11', 1009),
(19, 'Office Chair', 'OC19019', 25, 149.99, 'Store 12', 1010),
(20, 'Protein Powder', 'PP20020', 100, 34.99, 'Store 13', 1011);

-- Create Customer Table
CREATE TABLE Customer (
    CID INT PRIMARY KEY,
    CName VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    EmailAddress VARCHAR(255) NOT NULL
);

-- Inserting 20 sample values into Customer table
INSERT INTO Customer (CID, CName, Address, EmailAddress) VALUES
(101, 'John Doe', '123 Main St, Cityville, 12345', 'john.doe@example.com'),
(102, 'Jane Smith', '456 Oak St, Townsville, 67890', 'jane.smith@example.com'),
(103, 'Michael Johnson', '789 Elm St, Villageton, 13579', 'michael.j@example.com'),
(104, 'Emily Davis', '101 Pine St, Hamlet, 24680', 'emily.d@example.com'),
(105, 'David Wilson', '202 Cedar St, Woodtown, 97531', 'david.w@example.com'),
(106, 'Emma Garcia', '303 Elm St, Greenvale, 86420', 'emma.g@example.com'),
(107, 'Daniel Martinez', '404 Maple St, Riverdale, 73215', 'daniel.m@example.com'),
(108, 'Olivia Robinson', '505 Birch St, Hilltop, 48126', 'olivia.r@example.com'),
(109, 'Liam Clark', '606 Oak St, Springville, 36924', 'liam.c@example.com'),
(110, 'Sophia Hall', '707 Pine St, Lakeside, 25783', 'sophia.h@example.com'),
(111, 'Ethan Lewis', '808 Cedar St, Mountain View, 14362', 'ethan.l@example.com'),
(112, 'Ava Lee', '909 Elm St, Rivertown, 52841', 'ava.l@example.com'),
(113, 'Mia Young', '111 Maple St, Hillside, 61492', 'mia.y@example.com'),
(114, 'Noah Adams', '212 Birch St, Brookside, 79538', 'noah.a@example.com'),
(115, 'Isabella Turner', '313 Oak St, Greenfield, 68947', 'isabella.t@example.com'),
(116, 'Lucas Hall', '414 Pine St, Maplewood, 93276', 'lucas.h@example.com'),
(117, 'Amelia Ward', '515 Cedar St, Springfield, 26789', 'amelia.w@example.com'),
(118, 'Aiden Scott', '616 Elm St, Riverdale, 35791', 'aiden.s@example.com'),
(119, 'Charlotte Lewis', '717 Maple St, Lakeside, 64928', 'charlotte.l@example.com'),
(120, 'Henry Turner', '818 Birch St, Hillside, 72643', 'henry.t@example.com');

-- Create Order Table
CREATE TABLE orderr (
    OrderID INT PRIMARY KEY,
    CID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CID) REFERENCES Customer(CID)
);


-- Inserting 20 sample values into orderr table
INSERT INTO orderr (OrderID, CID, OrderDate, TotalAmount) VALUES
(10001, 101, '2023-10-01', 299.99),
(10002, 102, '2023-10-02', 459.97),
(10003, 103, '2023-10-03', 799.95),
(10004, 104, '2023-10-04', 199.99),
(10005, 105, '2023-10-05', 679.96),
(10006, 106, '2023-10-06', 119.99),
(10007, 107, '2023-10-07', 589.93),
(10008, 108, '2023-10-08', 899.92),
(10009, 109, '2023-10-09', 329.99),
(10010, 110, '2023-10-10', 179.98),
(10011, 111, '2023-10-11', 239.97),
(10012, 112, '2023-10-12', 409.96),
(10013, 113, '2023-10-13', 729.95),
(10014, 114, '2023-10-14', 279.94),
(10015, 115, '2023-10-15', 149.93),
(10016, 116, '2023-10-16', 609.92),
(10017, 117, '2023-10-17', 499.91),
(10018, 118, '2023-10-18', 339.90),
(10019, 119, '2023-10-19', 169.89),
(10020, 120, '2023-10-20', 789.88);

-- Create OrderProduct Table
CREATE TABLE OrderProduct (
    OrderProductID INT PRIMARY KEY,
    OrderID INT,
    PID INT,
    Quantity INT,
    Subtotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orderr(OrderID),
    FOREIGN KEY (PID) REFERENCES Product(PID)
);


-- Inserting 20 sample values into OrderProduct table
INSERT INTO OrderProduct (OrderProductID, OrderID, PID, Quantity, Subtotal) VALUES
(20001, 10001, 1, 2, 1599.98),
(20002, 10002, 2, 3, 1499.97),
(20003, 10003, 3, 1, 299.99),
(20004, 10004, 4, 4, 79.96),
(20005, 10005, 5, 2, 79.98),
(20006, 10006, 6, 1, 49.99),
(20007, 10007, 7, 5, 249.95),
(20008, 10008, 8, 2, 299.98),
(20009, 10009, 9, 3, 89.97),
(20010, 10010, 10, 2, 99.98),
(20011, 10011, 11, 1, 29.99),
(20012, 10012, 12, 4, 199.96),
(20013, 10013, 13, 2, 99.98),
(20014, 10014, 14, 3, 44.97),
(20015, 10015, 15, 1, 29.99),
(20016, 10016, 16, 2, 159.98),
(20017, 10017, 17, 1, 99.99),
(20018, 10018, 18, 3, 299.97),
(20019, 10019, 19, 2, 33.98),
(20020, 10020, 20, 1, 34.99);

-- Create Shipment Table
CREATE TABLE Shipment (
    ShipmentID INT PRIMARY KEY,
    ShipmentDate DATE,
    OrderID INT,
    TrackingInfo VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES Orderr(OrderID)
);


-- Inserting 20 sample values into Shipment table
INSERT INTO Shipment (ShipmentID, ShipmentDate, OrderID, TrackingInfo) VALUES
(30001, '2023-10-05', 10001, 'XY123456'),
(30002, '2023-10-06', 10002, 'AB789012'),
(30003, '2023-10-07', 10003, 'CD345678'),
(30004, '2023-10-08', 10004, 'EF901234'),
(30005, '2023-10-09', 10005, 'GH567890'),
(30006, '2023-10-10', 10006, 'IJ123456'),
(30007, '2023-10-11', 10007, 'KL789012'),
(30008, '2023-10-12', 10008, 'MN345678'),
(30009, '2023-10-13', 10009, 'OP901234'),
(30010, '2023-10-14', 10010, 'QR567890'),
(30011, '2023-10-15', 10011, 'ST123456'),
(30012, '2023-10-16', 10012, 'UV789012'),
(30013, '2023-10-17', 10013, 'WX345678'),
(30014, '2023-10-18', 10014, 'YZ901234'),
(30015, '2023-10-19', 10015, 'AA567890'),
(30016, '2023-10-20', 10016, 'BB123456'),
(30017, '2023-10-21', 10017, 'CC789012'),
(30018, '2023-10-22', 10018, 'DD345678'),
(30019, '2023-10-23', 10019, 'EE901234'),
(30020, '2023-10-24', 10020, 'FF567890');

-- Create Invoice Table
CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    OrderID INT,
    InvoiceDate DATE,
    CID INT,

    PaymentInfo VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES Orderr(OrderID),
    FOREIGN KEY (CID) REFERENCES Customer(CID)
);

-- Inserting 20 sample values into Invoice table
INSERT INTO Invoice (InvoiceID, OrderID, InvoiceDate, CID, PaymentInfo) VALUES
(40001, 10001, '2023-10-06', 101, 'Credit Card - Visa'),
(40002, 10002, '2023-10-07', 102, 'PayPal'),
(40003, 10003, '2023-10-08', 103, 'Credit Card - MasterCard'),
(40004, 10004, '2023-10-09', 104, 'Cash on Delivery'),
(40005, 10005, '2023-10-10', 105, 'Credit Card - American Express'),
(40006, 10006, '2023-10-11', 106, 'PayPal'),
(40007, 10007, '2023-10-12', 107, 'Credit Card - Visa'),
(40008, 10008, '2023-10-13', 108, 'Cash on Delivery'),
(40009, 10009, '2023-10-14', 109, 'Credit Card - MasterCard'),
(40010, 10010, '2023-10-15', 110, 'PayPal'),
(40011, 10011, '2023-10-16', 111, 'Credit Card - Visa'),
(40012, 10012, '2023-10-17', 112, 'Cash on Delivery'),
(40013, 10013, '2023-10-18', 113, 'Credit Card - American Express'),
(40014, 10014, '2023-10-19', 114, 'PayPal'),
(40015, 10015, '2023-10-20', 115, 'Credit Card - Visa'),
(40016, 10016, '2023-10-21', 116, 'Cash on Delivery'),
(40017, 10017, '2023-10-22', 117, 'Credit Card - MasterCard'),
(40018, 10018, '2023-10-23', 118, 'PayPal'),
(40019, 10019, '2023-10-24', 119, 'Credit Card - Visa'),
(40020, 10020, '2023-10-25', 120, 'Cash on Delivery');

-- Indexes 

-- Indexes for Product Table
CREATE INDEX idx_CategoryID ON Product (CategoryID);

-- Indexes for OrderProduct Table
CREATE INDEX idx_OrderID ON OrderProduct (OrderID);
CREATE INDEX idx_PID ON OrderProduct (PID);

-- Indexes for Shipment Table
CREATE INDEX idx_OrderID_Shipment ON Shipment (OrderID);

-- Indexes for Invoice Table
CREATE INDEX idx_OrderID_Invoice ON Invoice (OrderID);
CREATE INDEX idx_CID_Invoice ON Invoice (CID);

SHOW INDEX FROM Invoice;

-- Views 

CREATE VIEW OrderSummaryView AS
SELECT
    o.OrderID,
    o.OrderDate,
    o.TotalAmount,
    c.CName AS CustomerName,
    i.PaymentInfo
FROM
    orderr o
JOIN
    Customer c ON o.CID = c.CID
JOIN
    Invoice i ON o.OrderID = i.OrderID;

-- 2
CREATE VIEW ProductDetailsView AS
SELECT
    p.PID,
    p.PName AS ProductName,
    pc.CategoryName AS Category,
    p.Price,
    p.Quantity,
    p.Location
FROM
    Product p
JOIN
    ProductCategory pc ON p.CategoryID = pc.CategoryID;

-- 3 
CREATE VIEW CustomerInfoView AS
SELECT
    CID,
    CName AS CustomerName,
    Address,
    EmailAddress AS Email
FROM
    Customer;

-- 4 

CREATE VIEW ShipmentDetailsView AS
SELECT
    ShipmentID,
    ShipmentDate,
    OrderID,
    TrackingInfo
FROM
    Shipment;

-- 5 

CREATE VIEW ProductCategorySummaryView AS
SELECT
    CategoryID,
    CategoryName
FROM
    ProductCategory;

Select*from ProductCategorySummaryView;

-- Temporary tables 
CREATE TEMPORARY TABLE TempProduct AS
SELECT * FROM Product;

CREATE TEMPORARY TABLE TempCustomer AS
SELECT * FROM Customer;

CREATE TEMPORARY TABLE TempOrder AS
SELECT * FROM orderr;

CREATE TEMPORARY TABLE TempOrderProduct AS
SELECT * FROM OrderProduct;

CREATE TEMPORARY TABLE TempShipment AS
SELECT * FROM Shipment;

CREATE TEMPORARY TABLE TempInvoice AS
SELECT * FROM Invoice;

SELECT * FROM TempCustomer;

-- Triggers 
-- Update product quantity trigger 
DELIMITER //
CREATE TRIGGER UpdateProductQuantityTrigger
AFTER INSERT ON OrderProduct
FOR EACH ROW
BEGIN
    DECLARE newQuantity INT;
    DECLARE currentQuantity INT;
    
    SELECT Quantity INTO currentQuantity FROM Product WHERE PID = NEW.PID;
    SET newQuantity = currentQuantity - NEW.Quantity;
    
    UPDATE Product SET Quantity = newQuantity WHERE PID = NEW.PID;
END;
//
DELIMITER ;

-- Updated product quantity trigger
DELIMITER //
CREATE TRIGGER UpdateProductQuantityTrigger
AFTER INSERT ON OrderProduct
FOR EACH ROW
BEGIN
    UPDATE Product 
    SET Quantity = Quantity - NEW.Quantity 
    WHERE PID = NEW.PID;
END;
//
DELIMITER ;

-- Update order total trigger 
DELIMITER //
CREATE TRIGGER UpdateTotalAmountTrigger
AFTER INSERT ON OrderProduct
FOR EACH ROW
BEGIN
    DECLARE totalAmount DECIMAL(10, 2);
    
    SELECT TotalAmount INTO totalAmount FROM orderr WHERE OrderID = NEW.OrderID;
    SET totalAmount = totalAmount + NEW.Subtotal;
    
    UPDATE orderr SET TotalAmount = totalAmount WHERE OrderID = NEW.OrderID;
END;
//
DELIMITER ;

-- Track order changes trigger 
DELIMITER //
CREATE TRIGGER TrackOrderChangesTrigger
AFTER UPDATE ON orderr
FOR EACH ROW
BEGIN
    INSERT INTO OrderHistory (OrderID, OldTotalAmount, NewTotalAmount, ChangeDate)
    VALUES (NEW.OrderID, OLD.TotalAmount, NEW.TotalAmount, CURDATE());
END;
//
DELIMITER ;

-- Ensure cosistancy trigger 
DELIMITER //
CREATE TRIGGER PreventOverdraftTrigger
BEFORE UPDATE ON orderr
FOR EACH ROW
BEGIN
    IF NEW.TotalAmount < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Order total cannot be negative';
    END IF;
END;
//
DELIMITER ;

-- Maintain shipment status trigger 
DELIMITER //
CREATE TRIGGER UpdateShipmentStatusTrigger
AFTER UPDATE ON Shipment
FOR EACH ROW
BEGIN
    IF NEW.ShipmentDate IS NOT NULL THEN
        UPDATE ShipmentStatus SET Status = 'Shipped' WHERE OrderID = NEW.OrderID;
    ELSE
        UPDATE ShipmentStatus SET Status = 'Pending' WHERE OrderID = NEW.OrderID;
    END IF;
END;
//
DELIMITER ;

show triggers;

-- Stored procedures 

-- Retrive products by category
DELIMITER //
CREATE PROCEDURE GetProductsByCategory(IN categoryName VARCHAR(255))
BEGIN
    SELECT * FROM Product p
    JOIN ProductCategory pc ON p.CategoryID = pc.CategoryID
    WHERE pc.CategoryName = categoryName;
END //
DELIMITER ;

-- Place new order 
DELIMITER //
CREATE PROCEDURE PlaceOrder(IN customerId INT, IN productId INT, IN quantity INT)
BEGIN
    DECLARE productPrice DECIMAL(10, 2);
    DECLARE orderTotal DECIMAL(10, 2);
    
    -- Get product price
    SELECT Price INTO productPrice FROM Product WHERE PID = productId;
    
    -- Calculate subtotal and update order total
    SET orderTotal = productPrice * quantity;
    
    -- Insert into OrderProduct table
    INSERT INTO OrderProduct (OrderID, PID, Quantity, Subtotal) VALUES
    ((SELECT MAX(OrderID) FROM orderr) + 1, productId, quantity, orderTotal);
    
    -- Update total amount in the order
    UPDATE orderr SET TotalAmount = TotalAmount + orderTotal WHERE OrderID = (SELECT MAX(OrderID) FROM orderr);
END //
DELIMITER ;

-- Get order details 
DELIMITER //
CREATE PROCEDURE GetOrderDetails(IN orderId INT)
BEGIN
    SELECT op.OrderID, op.Quantity, p.PName, p.Price, op.Subtotal
    FROM OrderProduct op
    JOIN Product p ON op.PID = p.PID
    WHERE op.OrderID = orderId;
END //
DELIMITER ;

-- update product price 
DELIMITER //
CREATE PROCEDURE UpdateProductPrice(IN productId INT, IN newPrice DECIMAL(10, 2))
BEGIN
    UPDATE Product SET Price = newPrice WHERE PID = productId;
END //
DELIMITER ;

-- Calculate total sales 
DELIMITER //
CREATE PROCEDURE CalculateTotalSales(IN productId INT, OUT totalSales DECIMAL(10, 2))
BEGIN
    SELECT SUM(op.Subtotal) INTO totalSales
    FROM OrderProduct op
    WHERE op.PID = productId;
END //
DELIMITER ;

-- Get customer orders 
DELIMITER //
CREATE PROCEDURE GetCustomerOrders(IN customerId INT)
BEGIN
    SELECT * FROM orderr WHERE CID = customerId;
END //
DELIMITER ;

-- Delete product by ID 
DELIMITER //
CREATE PROCEDURE DeleteProductById(IN productId INT)
BEGIN
    DELETE FROM Product WHERE PID = productId;
END //
DELIMITER ;

SHOW PROCEDURE STATUS;

-- Functions 

-- Calculate total amount of an order 

DELIMITER //
CREATE FUNCTION CalculateOrderTotal(orderId INT) RETURNS DECIMAL(10, 2) 
DETERMINISTIC
BEGIN
    DECLARE totalAmount DECIMAL(10, 2);
    SELECT SUM(Quantity * Price) INTO totalAmount
    FROM OrderProduct OP
    INNER JOIN Product P ON OP.PID = P.PID
    WHERE OP.OrderID = orderId;
    RETURN totalAmount;
END //
DELIMITER ;

-- Get product quantity by location 

DELIMITER //GetProductQuantitybylocationnGetProductQuantitybylocationnGetProductQuantitybylocationn

CREATE FUNCTION GetProductQuantitybylocation(productId INT, location VARCHAR(255)) RETURNS INT DETERMINISTIC
DETERMINISTIC
BEGIN
    DECLARE quantity INT;
    SELECT Quantity INTO quantity
    FROM Product
    WHERE PID = productId AND Location = location;
    RETURN COALESCE(quantity, 0); -- Added COALESCE to handle NULL values
END//

DELIMITER ;

-- Functions 
-- --------------------------------------------
 DELIMITER //

CREATE FUNCTION CalculateTotalSalesByCategory(categoryName VARCHAR(255))
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE totalSales DECIMAL(10, 2);
    SELECT SUM(OP.Subtotal) INTO totalSales
    FROM OrderProduct OP
    JOIN Product P ON OP.PID = P.PID
    JOIN ProductCategory PC ON P.CategoryID = PC.CategoryID
    WHERE PC.CategoryName = categoryName;
    RETURN totalSales;
END//

DELIMITER ;

DELIMITER //

CREATE FUNCTION CalculateTotalOrderAmount(customerID INT)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE totalAmount DECIMAL(10, 2);
    SELECT SUM(OP.Subtotal) INTO totalAmount
    FROM OrderProduct OP
    JOIN orderr O ON OP.OrderID = O.OrderID
    WHERE O.CID = customerID;
    RETURN totalAmount;
END//

DELIMITER ;


DELIMITER //

CREATE FUNCTION CalculateTotalSalesByCategory(categoryName VARCHAR(255))
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE totalSales DECIMAL(10, 2);
    SELECT SUM(OP.Subtotal) INTO totalSales
    FROM OrderProduct OP
    JOIN Product P ON OP.PID = P.PID
    JOIN ProductCategory PC ON P.CategoryID = PC.CategoryID
    WHERE PC.CategoryName = categoryName;
    RETURN totalSales;
END//

DELIMITER ;


 



 SELECT GetProductQuantityByLocationn(productId,location);


SHOW FUNCTION STATUS;


-- ----------------------------------------------------
-- ----------------------------------------------------

SELECT * FROM Product;

SELECT PName, Price FROM Product WHERE Price < 50;

SELECT SUM(TotalAmount) AS TotalOrdersAmount FROM orderr;

SELECT CName, OrderDate FROM Customer 
JOIN orderr ON Customer.CID = orderr.CID;

SELECT CategoryName, COUNT(*) AS ProductCount FROM ProductCategory 
JOIN Product ON ProductCategory.CategoryID = Product.CategoryID 
GROUP BY CategoryName;

SELECT PName, Price, 
       RANK() OVER (ORDER BY Price DESC) AS rankk
FROM Product;

SELECT PName, Quantity,
       SUM(Quantity) OVER (ORDER BY PID) AS RunningTotalQuantity
FROM Product
ORDER BY PID;

 SELECT OrderID, OrderDate, TotalAmount,
       SUM(TotalAmount) OVER (ORDER BY OrderDate) AS RunningTotal
FROM orderr;
 
 SELECT o.CID, c.CName, SUM(o.TotalAmount) AS TotalSpent
FROM orderr o
JOIN Customer c ON o.CID = c.CID
GROUP BY o.CID, c.CName
ORDER BY TotalSpent DESC
LIMIT 5;
 
SELECT EXTRACT(MONTH FROM OrderDate) AS Month, 
       EXTRACT(YEAR FROM OrderDate) AS Year, 
       SUM(TotalAmount) AS MonthlyRevenue
FROM orderr
GROUP BY EXTRACT(MONTH FROM OrderDate), EXTRACT(YEAR FROM OrderDate)
ORDER BY Year, Month;

SELECT PName, Price 
FROM Product 
WHERE Price < (SELECT AVG(Price) FROM Product);





SELECT PName, 
       CASE 
           WHEN Price < 50 THEN 'Low Range'
           WHEN Price >= 50 AND Price < 200 THEN 'Mid Range'
           ELSE 'High Range'
       END AS PriceCategory
FROM Product;

UPDATE Product SET Location = 'Warehouse D' WHERE CategoryID = 1003;
select * from Product;
  
 SELECT ProductCategory.CategoryName, AVG(Product.Price) AS AveragePrice
FROM Product
JOIN ProductCategory ON Product.CategoryID = ProductCategory.CategoryID
GROUP BY ProductCategory.CategoryName
HAVING AVG(Product.Price) > 200;
 
SELECT CName
FROM Customer
WHERE CID IN (SELECT CID FROM orderr GROUP BY CID HAVING COUNT(*) > 1);

SELECT CName, PName
FROM Customer
CROSS JOIN Product;





DELETE FROM Product WHERE Quantity < 50;
 
 
 
alter table customer add column Password VARCHAR(255);

alter table customer add column IsAdmin VARCHAR(10);

update customer set Password='1234' where CID >  100;

update customer set IsAdmin='1' where CID >  100 and CID <105;


CREATE TABLE Cart (
    CID INT,
    PID INT,
    Quantity INT,
    FOREIGN KEY (CID) REFERENCES Customer(CID),
    FOREIGN KEY (PID) REFERENCES Product(PID)
);

 
