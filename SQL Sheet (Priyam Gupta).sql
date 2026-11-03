DROP DATABASE if exists Shopping_Management;
CREATE DATABASE Shopping_Management;
Use Shopping_Management;

CREATE TABLE customer(
Customer_id int primary key auto_increment,
Customer_Name varchar(100) not null,
Email varchar(100) unique not null,
Phone_Number char(10),
Age tinyint check(Age>0),
 Gender Enum('Male','Female','Other'),
 Country varchar(50) default 'India',
 City varchar(50),
 Pincode char(6) default 201301,
 Registration_Date Date default(current_date),
 Registration_Time Time default(current_time),
 Created_At timestamp default(current_timestamp),
 Address varchar(250),
 Customer_Status Enum('Active','Inactive','Blocked') default 'Active',
 Customer_Notes varchar(1000));
 
create table orders(
 Order_Id int primary key auto_increment,
 Customer_Id int,
 Order_Date Date default(current_date),
 Order_Amount decimal(10,2) not null,
 Order_Status Enum('Pending','Processing','Shipped','Delivered','Cancelled') default 'Pending',
 Payment_Method Enum('Cash','Card','UPI','Net Banking'),
 Payment_Status Enum('Pending','Paid','Failed') default 'Pending',
 Shipping_Address varchar(250),
 Delivery_Pincode char(6),
 Quantity int check(Quantity>=0),
 Discount_Amount decimal(10,2) default 0,
 Delivery_Date Date,
 Created_At timestamp default(current_timestamp),
 Tracking_Number varchar(30) Not Null,
 Delivery_Status Enum('Not Dispatched','InTransit','Delivered','Returned') default 'Not Dispatched',
 Order_Notes varchar(1000),
 foreign key (Customer_Id) references customer(Customer_id) on delete cascade on update cascade);