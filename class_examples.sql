-- creating our database

DROP DATABASE IF EXISTS animals_db;
CREATE DATABASE animals_db;
USE animals_db;

-- creating our table

CREATE TABLE people (
	id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR (30) NOT NULL,
    has_pet BOOLEAN NOT NULL,
    pet_name VARCHAR(30),
    pet_age INT,
    PRIMARY KEY (id)
);

-- inserting things into our db

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Jessica", TRUE, "Nugget", 12);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("John", TRUE, "Chip", 0);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Bryan", FALSE, "Penelope", 20);

-- updating a table entry
UPDATE people
SET has_pet = TRUE
WHERE id = 3;

-- viewing our db

SELECT * FROM people;
SELECT * FROM people WHERE name = "Bryan";

-- delete from our db

DELETE FROM people WHERE id = 2;

-- create as schema todo_db
-- create a table todos
-- todos should be a primary id => INT
-- INT should auto increment not null
-- todo text should be in the table NOT NULL
-- completed default FALSE
-- view all of the todos
-- view a single todo
-- delete a todo
-- update a todo

DROP DATABASE IF EXISTS todo_db;
CREATE DATABASE todo_db;
USE todo_db;

CREATE TABLE todo(
	id INT AUTO_INCREMENT NOT NULL,
    todo_text TEXT NOT NULL,
    completed BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id)
);

INSERT INTO todo (todo_text)
VALUES ("pack stuff to go home, need to make sure to get everything cleaned and organized beforehand");

INSERT INTO todo (todo_text)
VALUES ("laundry");

INSERT INTO todo (todo_text)
VALUES ("class");

INSERT INTO todo (todo_text)
VALUES ("");

INSERT INTO todo (todo_text)
VALUES ();

SELECT * FROM todo;
SELECT * FROM todo where id = 3;

UPDATE todo
SET completed = TRUE
WHERE id = 3;

DELETE FROM todo WHERE id = 4;

-- create favorite_db

DROP DATABASE IF EXISTS favorite_db;
CREATE DATABASE favorite_db;
USE favorite_db;

-- Creates the table "favorite_foods" within favorite_db --
CREATE TABLE favorite_foods (
	food VARCHAR(30) NOT NULL,
    score INT,
    PRIMARY KEY (food)
);

CREATE TABLE favorite_songs (
	song VARCHAR(30) NOT NULL,
	artist VARCHAR(30),
	score INT,
	PRIMARY KEY (song)
);

CREATE TABLE favorite_movies (
	id INT auto_increment NOT NULL,
    movie VARCHAR (30) NOT NULL,
    five_times BOOLEAN DEFAULT FALSE,
    score INT,
    PRIMARY KEY (id)
);

INSERT INTO favorite_foods (food, score)
VALUES ("cheese", 10);

INSERT INTO favorite_foods (food, score)
VALUES ("pizza", 10);

INSERT INTO favorite_movies (movie, score)
VALUES ("Clueless", 10);

INSERT INTO favorite_movies (movie, score)
VALUES ("Grease", 10);

INSERT INTO favorite_songs (song, artist, score)
VALUES ("Orion", "Metalica", 3);

INSERT INTO favorite_songs (song, artist, score)
VALUES ("Press Corpse", "Anti Flag", 2);

SELECT * FROM favorite_foods;
SELECT * FROM favorite_movies;
SELECT * FROM favorite_songs;
SELECT * FROM favorite_songs WHERE song = "Orion";