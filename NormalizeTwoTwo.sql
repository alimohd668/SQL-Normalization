CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerName TEXT NOT NULL,
    CustomerAddress TEXT NOT NULL
);

CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductName TEXT NOT NULL,
    Price REAL NOT NULL
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    ProductID INTEGER,
    Quantity INTEGER NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers (CustomerName, CustomerAddress) VALUES
('John Smith', '123 Main St'),
('Jane Doe', '456 Elm St');

INSERT INTO Products (ProductName, Price) VALUES
('T-Shirt', 10.00),
('Jeans', 50.00),
('Hat', 20.00);

INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity) VALUES
(1001, 1, 1, 2),
(1002, 2, 2, 1),
(1003, 1, 3, 1);