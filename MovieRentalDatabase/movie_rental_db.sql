--Part 1: Create Database Schema

--Step 1: Create a database (Created database using CLI mode)
--CREATE DATABASE movie_rental_db;


--Step 2: Create tables

--Table 1: Movies
CREATE TABLE Movies(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    director VARCHAR(100) NOT NULL,
    release_year INTEGER,
    available BOOLEAN DEFAULT TRUE,
    runtime_minutes INTEGER,
    language VARCHAR(50),
    genre VARCHAR(50)
);


--Table 2: Members
CREATE TABLE Members(
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);


--Table 3: Rentals (relates Movies and Members)
CREATE TABLE Rentals(
    rental_id  SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES Movies(movie_id),
    member_id INTEGER REFERENCES Members(member_id),
    rental_date DATE DEFAULT CURRENT_DATE,
    return_date DATE
);
