-- SQL file for Chef Onboarding Form

-- Create the ChefOnboarding database
CREATE DATABASE IF NOT EXISTS ChefOnboarding;
USE ChefOnboarding;

-- Create the PersonalDetails table
CREATE TABLE IF NOT EXISTS PersonalDetails (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    PhoneNo VARCHAR(15)
);

-- Create the Address table
CREATE TABLE IF NOT EXISTS Address (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    AddressLine1 VARCHAR(255) NOT NULL,
    AddressLine2 VARCHAR(255),
    ZIPCode VARCHAR(10),
    PickUpInstruction TEXT
);

-- Create the Cuisine table
CREATE TABLE IF NOT EXISTS Cuisine (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    `Indian` BOOLEAN DEFAULT 0,
    `Mexican` BOOLEAN DEFAULT 0,
    `Italian` BOOLEAN DEFAULT 0,
    `Chinese` BOOLEAN DEFAULT 0,
    `Spanish` BOOLEAN DEFAULT 0,
    `Cuban` BOOLEAN DEFAULT 0,
    `Japanese` BOOLEAN DEFAULT 0,
    `French` BOOLEAN DEFAULT 0,
    `Thai` BOOLEAN DEFAULT 0,
    `American` BOOLEAN DEFAULT 0,
    `Caribbean` BOOLEAN DEFAULT 0,
    `Pakistani` BOOLEAN DEFAULT 0,
    `Mediterranean` BOOLEAN DEFAULT 0,
    `Latin American` BOOLEAN DEFAULT 0,
    `Baked Goods` BOOLEAN DEFAULT 0,
    `Middle Eastern` BOOLEAN DEFAULT 0,
    `Southern` BOOLEAN DEFAULT 0,
    `Southeast Asian` BOOLEAN DEFAULT 0,
    `Korean` BOOLEAN DEFAULT 0
    -- Add more cuisines as required...
);


-- Create the ProfileImage table
CREATE TABLE IF NOT EXISTS ProfileImage (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ImagePath TEXT
);

-- You can expand this SQL file with additional tables, columns, indexes, constraints, etc., as needed.
