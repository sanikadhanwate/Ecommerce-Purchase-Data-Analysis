create database Ecommerce_analysis
use Ecommerce_analysis

----------- creating customer, products, orders, order details, engagement tables -------------
create table Customers (Customer_ID INT PRIMARY KEY, Name VARCHAR(100), Gender VARCHAR(10), Age INT, 
Email VARCHAR(100), Address VARCHAR(255),Language VARCHAR(50), IP_Address VARCHAR(50), Browser_Info VARCHAR(255))

CREATE TABLE Products (Product_ID INT PRIMARY KEY,Product_Name VARCHAR(100),Product_Category VARCHAR(100),Product_Price DECIMAL(10, 2))

CREATE TABLE Orders (Order_ID INT PRIMARY KEY, Order_Date DATE,Customer_ID INT, Shipping_Address VARCHAR(255), Payment_Method VARCHAR(50),
Payment_Type VARCHAR(50),AM_or_PM VARCHAR(2),Order_Status VARCHAR(50),Lot VARCHAR(50),Company VARCHAR(100),FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID))

CREATE TABLE Order_Details (Order_Detail_ID INT PRIMARY KEY Identity(1,1),  Order_ID INT, Product_ID INT, Quantity_Purchased INT,
Discount_Applied DECIMAL(5,2), Purchase_Price DECIMAL(10, 2), FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID), FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID))

CREATE TABLE Engagement (Engagement_ID INT PRIMARY KEY Identity(1,1), Customer_ID INT,Device_Type VARCHAR(50),Session_Duration INT,
Referral_Source VARCHAR(50),Customer_Rating DECIMAL(3, 2), Delivery_Time INT, FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID))

select *from Customers
select*from Products
select*from Orders
select*from Order_Details
select* from Engagement

INSERT INTO Customers VALUES
(1, 'Rohan Devare', 'Male', 28, 'rohan.devare@gmail.com', '123 MG Road, Pune, Maharashtra', 'Hindi', '192.168.2.1', 'Chrome/90.0'),
(2, 'Jiya Sharma', 'Female', 34, 'jiya.sharma@gmail.com', '56 Ring Road, Delhi', 'Hindi', '192.168.2.2', 'Firefox/115.0'),
(3, 'Anaya Kapoor', 'Female', 40, 'anaya.kapoor@yahoo.com', '23 Bandra West, Mumbai, Maharashtra', 'Marathi', '192.168.2.3', 'Safari/16.0'),
(4, 'Namita Thappar', 'Female', 28, 'namita.thappar@outlook.com', '56 Indiranagar, Bangalore, Karnataka', 'Kannada', '192.168.2.4', 'Edge/114.0'),
(5, 'Akash Gupta', 'Male', 31, 'akash.gupta@gmail.com', '77 Whitefield, Bangalore, Karnataka', 'English', '192.168.2.5', 'Binge/13.1'),
(6, 'Sanya Verma', 'Female', 29, 'sanya.verma@yahoo.com', '125 Sector 44, Gurgaon, Haryana', 'Hindi', '192.168.2.6', 'Chrome/93.0'),
(7, 'Aarav Singh', 'Male', 32, 'aarav.singh@gmail.com', '12 MG Road, Chandigarh', 'Punjabi', '192.168.2.7', 'Firefox/89.0'),
(8, 'Meera Iyer', 'Female', 37, 'meera.iyer@gmail.com', '43 T Nagar, Chennai, Tamil Nadu', 'Tamil', '192.168.2.8', 'Safari/15.0'),
(9, 'Ritika Desai', 'Female', 35, 'ritika.desai@gmail.com', '98 Marine Drive, Mumbai, Maharashtra', 'Gujarati', '192.168.2.9', 'Edge/113.0'),
(10, 'Raghav Menon', 'Male', 38, 'raghav.menon@outlook.com', '29 Fort Kochi, Kerala', 'Malayalam', '192.168.2.10', 'Chrome/92.0'),
(11, 'Sophia Brown', 'Female', 36, 'sophia.brown@gmail.com', '312 Park Avenue, New York, USA', 'English', '192.168.2.11', 'Binge/12.0'),
(12, 'Emily Watson', 'Female', 41, 'emily.watson@yahoo.com', '500 Sunset Blvd, Los Angeles, USA', 'English', '192.168.2.12', 'Safari/14.1'),
(13, 'Siddharth Rao', 'Male', 30, 'sid.rao@gmail.com', '87 Jubilee Hills, Hyderabad, Telangana', 'Telugu', '192.168.2.13', 'Firefox/91.0'),
(14, 'Pooja Mehta', 'Female', 39, 'pooja.mehta@yahoo.com', '18 Sector 22, Noida, Uttar Pradesh', 'Hindi', '192.168.2.14', 'Edge/115.0'),
(15, 'Aditya Bansal', 'Male', 33, 'aditya.bansal@gmail.com', '45 Raja Park, Jaipur, Rajasthan', 'Rajasthani', '192.168.2.15', 'Chrome/94.0'),
(16, 'Niharika Roy', 'Female', 27, 'niharika.roy@gmail.com', '89 Salt Lake, Kolkata, West Bengal', 'Bengali', '192.168.2.16', 'Binge/11.0'),
(17, 'Aditi Patil', 'Female', 42, 'aditi.patil@yahoo.com', '100 FC Road, Pune, Maharashtra', 'Marathi', '192.168.2.17', 'Safari/17.0'),
(18, 'Vikram Jain', 'Male', 41, 'vikram.jain@gmail.com', '31 Civil Lines, Kanpur, Uttar Pradesh', 'Hindi', '192.168.2.18', 'Firefox/92.0'),
(19, 'Shreya Nair', 'Female', 34, 'shreya.nair@outlook.com', '78 MG Road, Trivandrum, Kerala', 'Malayalam', '192.168.2.19', 'Chrome/95.0'),
(20, 'Ayan Khan', 'Male', 26, 'ayan.khan@gmail.com', '54 Model Town, Ludhiana, Punjab', 'Punjabi', '192.168.2.20', 'Edge/116.0'),
(21, 'Sophia Taylor', 'Female', 29, 'sophia.taylor@yahoo.com', '777 Elm Street, Dallas, USA', 'English', '192.168.2.21', 'Safari/15.2'),
(22, 'Michael Scott', 'Male', 45, 'michael.scott@outlook.com', '401 Scranton Ave, Scranton, USA', 'English', '192.168.2.22', 'Binge/13.0'),
(23, 'Kavya Pillai', 'Female', 31, 'kavya.pillai@gmail.com', '22 MG Road, Ernakulam, Kerala', 'Malayalam', '192.168.2.23', 'Chrome/96.0'),
(24, 'Ishaan Arora', 'Male', 28, 'ishaan.arora@yahoo.com', '71 Sector 21, Chandigarh', 'Hindi', '192.168.2.24', 'Firefox/93.0'),
(25, 'Rina Banerjee', 'Female', 35, 'rina.banerjee@outlook.com', '60 Park Street, Kolkata, West Bengal', 'Bengali', '192.168.2.25', 'Safari/18.0')


INSERT INTO Products VALUES  
(1001, 'Smartphone', 'Electronics', 100.50),  
(1002, 'Book', 'Books', 45.99),  
(1003, 'T-Shirt', 'Clothing', 150.00),  
(1004, 'Laptop', 'Electronics', 750.00),  
(1005, 'Desk Chair', 'Furniture', 120.00),  
(1006, 'Notebook', 'Stationery', 20.50),  
(1007, 'Backpack', 'Accessories', 85.75),  
(1008, 'Sneakers', 'Footwear', 230.00),  
(1009, 'Blender', 'Appliances', 180.00),  
(1010, 'Headphones', 'Electronics', 90.00),  
(1011, 'Sunglasses', 'Accessories', 65.25),  
(1012, 'Coffee Mug', 'Kitchenware', 15.00),  
(1013, 'Yoga Mat', 'Fitness', 45.00),  
(1014, 'Electric Kettle', 'Appliances', 55.00),  
(1015, 'Dining Table', 'Furniture', 680.00),  
(1016, 'Gaming Mouse', 'Electronics', 35.50),  
(1017, 'Cookware Set', 'Kitchenware', 240.00),  
(1018, 'Shampoo', 'Personal Care', 12.75),  
(1019, 'Watch', 'Accessories', 150.00),  
(1020, 'Action Camera', 'Electronics', 300.00),  
(1021, 'Winter Jacket', 'Clothing', 400.00),  
(1022, 'Bluetooth Speaker', 'Electronics', 120.00),  
(1023, 'Running Shoes', 'Footwear', 175.00),  
(1024, 'Wall Clock', 'Decor', 35.99),  
(1025, 'LED TV', 'Electronics', 980.00);  

INSERT INTO Orders VALUES  
(101, '2023-12-01', 1, '456 Elm St, Springfield', 'Credit Card', 'Online', 'PM', 'Completed', 'Lot 46', 'Tech Corp'),  
(102, '2023-11-15', 2, '123 Pine St, Metropolis', 'PayPal', 'Online', 'AM', 'Pending', 'Lot 28', 'Book World'),  
(103, '2023-10-30', 3, '789 Cedar St, Gotham', 'Debit Card', 'In-store', 'PM', 'Returned', 'Lot 94', 'Clothing Co'),  
(104, '2023-12-05', 4, '10 MG Road, Bangalore, India', 'UPI', 'Online', 'AM', 'Completed', 'Lot 12', 'Tech Bazaar'),  
(105, '2023-12-07', 5, '50 Marine Drive, Mumbai, India', 'Credit Card', 'Online', 'PM', 'Pending', 'Lot 25', 'Lifestyle India'),  
(106, '2023-11-20', 6, '67 Park Avenue, New York, USA', 'Cash', 'In-store', 'AM', 'Cancelled', 'Lot 89', 'Gadget World'),  
(107, '2023-11-25', 7, '22 Jubilee Hills, Hyderabad, India', 'Net Banking', 'Online', 'PM', 'Completed', 'Lot 36', 'Fashion Fiesta'),  
(108, '2023-10-19', 8, '14 Salt Lake, Kolkata, India', 'Debit Card', 'Online', 'AM', 'Shipped', 'Lot 78', 'Home Essentials'),  
(109, '2023-12-03', 9, '400 Oak St, Gotham, USA', 'PayPal', 'Online', 'PM', 'Delivered', 'Lot 41', 'Book Haven'),  
(110, '2023-11-30', 10, '90 MG Road, Pune, India', 'UPI', 'Online', 'AM', 'Completed', 'Lot 62', 'Kitchen Pro'),  
(111, '2023-12-02', 11, '21 Whitefield, Bangalore, India', 'Credit Card', 'Online', 'PM', 'Pending', 'Lot 15', 'Electro Mart'),  
(112, '2023-11-22', 12, '88 Civil Lines, Kanpur, India', 'Cash', 'In-store', 'AM', 'Returned', 'Lot 99', 'Decor Central'),  
(113, '2023-10-28', 13, '25 Sector 44, Gurgaon, India', 'Net Banking', 'Online', 'PM', 'Completed', 'Lot 57', 'Tech Trendz'),  
(114, '2023-12-10', 14, '11 Bandra West, Mumbai, India', 'Credit Card', 'Online', 'AM', 'Shipped', 'Lot 84', 'Fashion India'),  
(115, '2023-11-18', 15, '6 Fort Kochi, Kerala, India', 'PayPal', 'Online', 'PM', 'Completed', 'Lot 32', 'Appliance World'),  
(116, '2023-10-15', 16, '30 T Nagar, Chennai, India', 'UPI', 'Online', 'AM', 'Pending', 'Lot 45', 'Fitness Essentials'),  
(117, '2023-12-09', 17, '500 Sunset Blvd, Los Angeles, USA', 'Credit Card', 'Online', 'PM', 'Delivered', 'Lot 27', 'Global Tech'),  
(118, '2023-11-29', 18, '77 MG Road, Chandigarh, India', 'Debit Card', 'In-store', 'AM', 'Completed', 'Lot 64', 'Home Comfort'),  
(119, '2023-12-12', 19, '12 Ring Road, Delhi, India', 'UPI', 'Online', 'PM', 'Shipped', 'Lot 73', 'Urban Bazaar'),  
(120, '2023-12-04', 20, '54 Model Town, Ludhiana, India', 'Net Banking', 'Online', 'AM', 'Completed', 'Lot 53', 'Clothing World'),  
(121, '2023-10-05', 21, '777 Elm Street, Dallas, USA', 'PayPal', 'Online', 'PM', 'Cancelled', 'Lot 18', 'Book Paradise'),  
(122, '2023-11-10', 22, '29 Fort Kochi, Kerala, India', 'Credit Card', 'Online', 'AM', 'Delivered', 'Lot 39', 'Furniture Hub'),  
(123, '2023-12-11', 23, '43 Civil Lines, Chandigarh, India', 'Cash', 'In-store', 'PM', 'Completed', 'Lot 21', 'Decor World'),  
(124, '2023-11-28', 24, '100 FC Road, Pune, India', 'Net Banking', 'Online', 'AM', 'Shipped', 'Lot 31', 'Tech Hub'),  
(125, '2023-12-06', 25, '60 Park Street, Kolkata, India', 'UPI', 'Online', 'PM', 'Completed', 'Lot 11', 'Kitchen Essentials')

INSERT INTO Order_Details VALUES  
(101, 1001, 2, 10.00, 150.75),  
(102, 1002, 1, 5.00, 89.99),  
(103, 1003, 3, 15.00, 250.00),  
(104, 1004, 1, 20.00, 730.00),  
(105, 1005, 4, 25.00, 450.00),  
(106, 1006, 6, 2.50, 115.00),  
(107, 1007, 2, 10.00, 170.00),  
(108, 1008, 1, 30.00, 200.00),  
(109, 1009, 3, 15.00, 510.00),  
(110, 1010, 2, 12.00, 155.00),  
(111, 1011, 1, 8.00, 57.25),  
(112, 1012, 5, 1.50, 70.00),  
(113, 1013, 1, 5.00, 40.00),  
(114, 1014, 3, 10.00, 140.00),  
(115, 1015, 1, 50.00, 620.00),  
(116, 1016, 2, 3.50, 60.50),  
(117, 1017, 1, 20.00, 220.00),  
(118, 1018, 3, 5.00, 33.75),  
(119, 1019, 1, 15.00, 135.00),  
(120, 1020, 1, 40.00, 270.00),  
(121, 1021, 2, 50.00, 750.00),  
(122, 1022, 4, 20.00, 440.00),  
(123, 1023, 1, 25.00, 150.00),  
(124, 1024, 3, 5.50, 100.00),  
(125, 1025, 1, 80.00, 900.00)

INSERT INTO Engagement VALUES  
(1, 'Desktop', 300, 'Google', 4.5, 5),  
(2, 'Mobile', 120, 'Social Media', 4.8, 7),  
(3, 'Tablet', 200, 'Direct', 4.2, 10),  
(4, 'Mobile', 150, 'Google', 4.7, 6),  
(5, 'Desktop', 400, 'Email', 4.3, 4),  
(6, 'Tablet', 250, 'Social Media', 4.6, 8),  
(7, 'Mobile', 100, 'Google', 4.9, 3),  
(8, 'Desktop', 320, 'Referral', 4.4, 5),  
(9, 'Tablet', 180, 'Direct', 4.1, 12),  
(10, 'Mobile', 90, 'Google', 4.8, 6),  
(11, 'Desktop', 300, 'Social Media', 4.6, 7),  
(12, 'Tablet', 220, 'Direct', 4.3, 9),  
(13, 'Mobile', 140, 'Email', 4.9, 4),  
(14, 'Desktop', 370, 'Referral', 4.2, 5),  
(15, 'Mobile', 110, 'Google', 4.7, 8),  
(16, 'Tablet', 260, 'Social Media', 4.5, 10),  
(17, 'Desktop', 340, 'Email', 4.4, 6),  
(18, 'Mobile', 95, 'Referral', 4.8, 7),  
(19, 'Tablet', 210, 'Google', 4.2, 11),  
(20, 'Desktop', 310, 'Direct', 4.6, 5),  
(21, 'Mobile', 120, 'Social Media', 4.9, 6),  
(22, 'Tablet', 230, 'Google', 4.1, 9),  
(23, 'Desktop', 290, 'Referral', 4.3, 7),  
(24, 'Mobile', 130, 'Direct', 4.7, 5),  
(25, 'Tablet', 200, 'Email', 4.5, 10) 

