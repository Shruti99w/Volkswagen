-- LAB 08 dataset setup
-- Run in the assigned Fabric Warehouse SQL Query Editor.
-- Synthetic training data only; no production data is included.

CREATE TABLE Sales (
    SaleID BIGINT,
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100),
    Region VARCHAR(50),
    Product VARCHAR(100),
    ProductCategory VARCHAR(100),
    OrderDate DATE,
    Quantity BIGINT,
    Revenue FLOAT
);

INSERT INTO Sales (SaleID,CustomerID,CustomerName,Region,Product,ProductCategory,OrderDate,Quantity,Revenue) VALUES
(1001,'C001','Alice','Pune','Laptop','Electronics','2026-08-01',2,2400),
(1002,'C002','Bob','Mumbai','Monitor','Electronics','2026-08-02',3,900),
(1003,'C003','Charlie','Delhi','Office Chair','Furniture','2026-08-03',5,1250),
(1004,'C001','Alice','Pune','Laptop','Electronics','2026-08-05',1,1200),
(1005,'C002','Bob','Mumbai','Desk','Furniture','2026-08-07',2,700),
(1006,'C003','Charlie','Delhi','Keyboard','Accessories','2026-08-09',4,320),
(1007,'C001','Alice','Pune','Laptop','Electronics','2026-08-12',1,1200),
(1008,'C002','Bob','Mumbai','Monitor','Electronics','2026-08-15',2,600),
(1009,'C003','Charlie','Delhi','Desk','Furniture','2026-08-18',3,1050),
(1010,'C001','Alice','Pune','Mouse','Accessories','2026-08-20',5,250),
(1011,'C002','Bob','Mumbai','Laptop','Electronics','2026-08-22',1,1200),
(1012,'C003','Charlie','Delhi','Monitor','Electronics','2026-08-25',1,300);

CREATE TABLE SalesOrderApproval (
    OrderID INT,
    OrderStatus VARCHAR(50),
    ApprovedBy VARCHAR(100),
    ApprovalTimestamp DATETIME2,
    Version INT
);

INSERT INTO SalesOrderApproval (OrderID,OrderStatus,ApprovedBy,ApprovalTimestamp,Version) VALUES
(5001,'Pending',NULL,NULL,1),
(5002,'Pending',NULL,NULL,1),
(5003,'Approved','Manager_Alex','2026-09-01 10:15:00',2),
(5004,'Rejected','Manager_Sarah','2026-09-02 14:30:00',1),
(5005,'Pending',NULL,NULL,1);

-- Validation queries
SELECT * FROM Sales ORDER BY SaleID;
SELECT * FROM SalesOrderApproval ORDER BY OrderID;
