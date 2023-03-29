/**
CREATE DATABASE crowdfunding_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
**/

CREATE TABLE Category(
category_id varchar(50) PRIMARY KEY,
category VARCHAR(50) NOT NULL
);


CREATE TABLE Subcategory(
subcategory_id varchar(50) PRIMARY KEY,
subcategory varchar(50) NOT NULL
);


CREATE TABLE Contacts(
contact_id int PRIMARY KEY,
first_name varchar(50),
last_name varchar(50),
email varchar(50)
);


CREATE TABLE Campaign(
cf_id int NOT NULL,
contact_id int NOT NULL,
CONSTRAINT fk_contact_id FOREIGN KEY(contact_id) references Contacts(contact_id), 
company_name varchar(50) NOT NULL,
description text NOT NULL,
goal float NOT NULL,
pledged float NOT NULL,
outcome	varchar(50)NOT NULL,
backers_count int NOT NULL,
country varchar(3)	NOT NULL,
currency varchar(3) NOT NULL, 	
launched_date date NOT NULL,
end_date date NOT NULL,	
category_id varchar(50) NOT NULL,
CONSTRAINT fk_category_id FOREIGN KEY(category_id) references Category(category_id), 
subcategory_id varchar(50)  NOT NULL,
CONSTRAINT fk_subcategoryid FOREIGN KEY(subcategory_id) references Subcategory(subcategory_id) 
);

SELECT * FROM Category;

SELECT * FROM Subcategory;

SELECT * FROM Contacts;

SELECT * FROM Campaign;
