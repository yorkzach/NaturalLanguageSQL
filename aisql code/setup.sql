-- create table person (
--     person_id integer primary key,
--     name varchar(20) not null
-- );

-- create table phone (
--     phone_id integer primary key,
--     person_id integer not null,
--     area_code int not null,
--     number int not null,
--     can_recieve_sms tinyint not null,
--     foreign key (person_id) references person (person_id)
-- );

-- create table address (
--     address_id integer primary key,
--     person_id integer not null,
--     street varchar(50),
--     zip integer not null
-- );

-- create table zip (
--     zip integer primary key,
--     city varchar(35),
--     state_two_letter_code char(2)
-- );

-- create table dog (
--     dog_id integer primary key,
--     name varchar(35),
--     breed varchar(35),
--     birth_date date
-- );

-- create table award (
--     award_id integer primary key,
--     dog_id integer not null,
--     event_date date,
--     award_name varchar(25) not null,
--     foreign key (dog_id) references dog (dog_id)
-- );

-- create table person_dog (
--     dog_id integer,
--     person_id integer,
--     foreign key (dog_id) references dog (dog_id),
--     foreign key (person_id) references person (person_id)
-- );

--MySQL

-- DROP SCHEMA IF EXISTS vending;
-- CREATE SCHEMA vending;
-- USE vending;

-- CREATE TABLE Locations (
--   id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
--   location varchar(255) NOT NULL,
--   total_earnings decimal(9,2),
--   recent_earnings decimal(9,2)
-- );

-- CREATE TABLE Machines (
--   id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
--   location_id integer NOT NULL,
--   total_earnings decimal(9,2),
--   recent_earnings decimal(9,2),
--   FOREIGN KEY (location_id) REFERENCES Locations (id)
-- );

-- CREATE TABLE Products (
--   id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
--   cost decimal(9,2) NOT NULL,
--   price decimal(9,2) NOT NULL
-- );

-- CREATE TABLE Inventory (
--   machine_id integer,
--   product_id integer,
--   items_left integer,
--   FOREIGN KEY (machine_id) REFERENCES Machines (id),
--   FOREIGN KEY (product_id) REFERENCES Products (id)
-- );

-- CREATE TABLE Transactions (
--   id integer PRIMARY KEY AUTO_INCREMENT,
--   location_id integer NOT NULL,
--   machine_id integer NOT NULL,
--   product_id integer NOT NULL,
--   transaction_time datetime NOT NULL,
--   FOREIGN KEY (location_id) REFERENCES Locations (id),
--   FOREIGN KEY (machine_id) REFERENCES Machines (id),
--   FOREIGN KEY (product_id) REFERENCES Products (id)
-- );

-- SQLlite
CREATE TABLE Locations (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  location TEXT NOT NULL,
  total_earnings NUMERIC(9,2),
  recent_earnings NUMERIC(9,2)
);

CREATE TABLE Machines (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  location_id INTEGER NOT NULL,
  total_earnings NUMERIC(9,2),
  recent_earnings NUMERIC(9,2),
  FOREIGN KEY (location_id) REFERENCES Locations(id)
);

CREATE TABLE Products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  cost NUMERIC(9,2) NOT NULL,
  price NUMERIC(9,2) NOT NULL
);

CREATE TABLE Inventory (
  machine_id INTEGER,
  product_id INTEGER,
  items_left INTEGER,
  FOREIGN KEY (machine_id) REFERENCES Machines(id),
  FOREIGN KEY (product_id) REFERENCES Products(id),
  PRIMARY KEY (machine_id, product_id) -- Define a composite primary key
);

CREATE TABLE Transactions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  location_id INTEGER NOT NULL,
  machine_id INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  transaction_time DATETIME NOT NULL,
  FOREIGN KEY (location_id) REFERENCES Locations(id),
  FOREIGN KEY (machine_id) REFERENCES Machines(id),
  FOREIGN KEY (product_id) REFERENCES Products(id)
);
