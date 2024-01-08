# Inventory-Management-System-SQL-Project


This database is designed to store information about products, product categories, customers, orders, order details, shipments, invoices, and includes some indexing and views for reporting purposes.

Here is a the description of the key components of the SQL code:

ProductCategory Table:

Stores information about different product categories, including CategoryID and CategoryName.
Product Table:

Represents detailed information about individual products, including PID (Product ID), PName (Product Name), SKU, Quantity, Price, Location, and a foreign key reference to the ProductCategory table.
Customer Table:

Contains details about customers, such as CID (Customer ID), CName (Customer Name), Address, and EmailAddress.
Order Table (orderr):

Represents orders placed by customers, with information like OrderID, Customer ID (CID), OrderDate, and TotalAmount.
OrderProduct Table:

Represents the relationship between orders and products, storing OrderProductID, OrderID (foreign key to Order table), PID (foreign key to Product table), Quantity, and Subtotal.
Shipment Table:

Stores information about product shipments, including ShipmentID, ShipmentDate, OrderID (foreign key to Order table), and TrackingInfo.
Invoice Table:

Contains details about invoices generated for orders, including InvoiceID, OrderID (foreign key to Order table), InvoiceDate, CID (foreign key to Customer table), and PaymentInfo.
Indexes:

Various indexes are created to improve the performance of certain queries. Indexes are added on columns like CategoryID, OrderID, PID, and CID.
