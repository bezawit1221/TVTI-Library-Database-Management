-- FDRE TVTI Library Database Setup
CREATE DATABASE TVTI_LibraryManagementSystem;

-- Creating Tables
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Genre VARCHAR(100),
    Total_Copies INT,
    Available_Copies INT,
    Publisher_ID INT,
    Language VARCHAR(50)
);

CREATE TABLE Readers (
    Reader_ID INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Middle_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    City VARCHAR(100),
    Job VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Active_Readers (
    Active_ID INT PRIMARY KEY,
    Reader_ID INT,
    Book_ID INT,
    Borrow_Date DATE,
    Due_Date DATE
);
