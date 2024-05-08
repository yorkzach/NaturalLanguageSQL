-- Insert data into Locations table
INSERT INTO Locations (location, total_earnings, recent_earnings) 
VALUES 
('New York', 10000.00, 1500.00),
('Los Angeles', 8500.00, 1200.00),
('Chicago', 9200.00, 1300.00);

-- Insert data into Machines table
INSERT INTO Machines (location_id, total_earnings, recent_earnings)
VALUES
(1, 4000.00, 600.00),
(1, 3500.00, 500.00),
(2, 3000.00, 400.00),
(3, 3500.00, 600.00);

-- Insert data into Products table
INSERT INTO Products (cost, price)
VALUES
(2.50, 5.00),
(1.75, 4.00),
(3.00, 6.50);

-- Insert data into Inventory table
INSERT INTO Inventory (machine_id, product_id, items_left)
VALUES
(1, 1, 20),
(1, 2, 15),
(2, 1, 25),
(2, 3, 10),
(3, 2, 18),
(4, 3, 22);

-- Insert data into Transactions table
INSERT INTO Transactions (location_id, machine_id, product_id, transaction_time)
VALUES
(1, 1, 1, '2024-05-08 08:30:00'),
(1, 1, 1, '2024-05-08 12:15:00'),
(2, 2, 3, '2024-05-08 10:45:00'),
(3, 4, 3, '2024-05-08 09:20:00'),
(3, 4, 3, '2024-05-08 13:55:00');
