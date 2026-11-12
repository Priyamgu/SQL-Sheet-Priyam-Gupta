Drop database if exists DDL_Commands;
create DATABASE DDL_Commands;
use  DDL_Commands;

CREATE TABLE my_table(
id INT,
name VARCHAR(100) Not NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

-- Create my_table2
-- Create my_table2
CREATE TABLE my_table2(
    id INT,
    description VARCHAR(255) NOT NULL
);

-- Insert data into my_table2
INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');

select * from my_table;
##########################################################################
-- ALTER COMMAND

-- Ques-01 Rename a column name
ALTER TABLE my_table rename column name to full_name;

-- Ques-02 Change the data type of the age column
Alter table my_table modify column age bigint;

-- Ques-03 Add a new column 
Alter table my_table add column email varchar(100);

-- Ques-04 Add new cloumn after name column
Alter table my_table add column middle_name varchar(50) after full_name;

-- Ques-05 Add a new column as first column
Alter table my_table add column EMP_Rank int first; 

-- Ques-06 Modify column
Alter table my_table modify column created_at datetime;

-- Ques-07 Change the data type in my_table2 column description
Alter table my_table2 modify column description text;

-- Ques-08 Modify column full_name as nullable
Alter table my_table modify column full_name varchar(100) null;

-- Ques-09 Add primary-key on the id column in my_table
Alter table my_table add primary key(id);

-- Ques-10 Drop the middle_name column 
Alter table my_table drop column middle_name;

-- Ques-11 Rename email column
Alter table my_table rename column email to email_address;

-- Ques-12 Allow null value in age column
Alter table my_table modify column age bigint null;

-- Ques-13 Add foreign key to the id column in my_table2 refrencing the id column in my_table
Alter table my_table2 add constraint fk_my_table2_id foreign key (id) references my_table (id);

-- Ques-14 Remove foreign key from my_table2 referencing my_table
Alter table my_table2 drop foreign key fk_my_table2_id;

-- Ques-15 Modify column name to allow a maximum length of 200 char
Alter table my_table modify column full_name varchar(200);

#####################################################################
-- DROP COMMAND

-- Ques-16 Drop my_table2 from the database 
Drop table if exists my_table2;

-- Ques-17 Drop the foreign key constraint fk_id in my_table2
-- Already done in ques-14 

-- Ques-18 Write a sql query to drop the primary key
Alter table my_table drop primary key;

-- Ques-19 Write a sql query to drop a column named age from the my_table
Alter table my_table drop column age; 

-- Ques-20 Drop the DDL_Commands database
Drop database if exists ddl_commands;