DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Atyha	Arshad');
INSERT INTO people (name) VALUES ('Calum Cannon');
INSERT INTO people (name) VALUES ('Stelios Constantinou-Briggs');
INSERT INTO people (name) VALUES ('Sridevi Dara');
INSERT INTO people (name) VALUES ('Paul Flannery');
INSERT INTO people (name) VALUES ('Lindsey Izzard');
INSERT INTO people (name) VALUES ('Hugh Jarvis');
INSERT INTO people (name) VALUES ('Tony Goncalves');
INSERT INTO people (name) VALUES ('Scott Maitland');
INSERT INTO people (name) VALUES ('David McAllister');
INSERT INTO people (name) VALUES ('Mhairi McCrindle');
INSERT INTO people (name) VALUES ('Anne McKendry');
INSERT INTO people (name) VALUES ('John Muir');
INSERT INTO people (name) VALUES ('Kevin O`Hagan');
INSERT INTO people (name) VALUES ('Darren Shankland');
INSERT INTO people (name) VALUES ('Danny	Welsh');
INSERT INTO people (name) VALUES ('Theo Wright');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:10');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '13:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '20:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '21:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '21:15');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '23:30');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '14:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:05');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:15');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '14:30');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '15:10');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '17:35');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '17:20');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '20:10');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '14:20');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '14:50');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man and the Wasp', 2018, '20:15');

UPDATE people SET name = 'John Moir' WHERE name = 'John Muir';
DELETE FROM movies WHERE title = 'Batman Begins';
INSERT INTO people (name) VALUES ('Colin Riddel');
DELETE FROM people WHERE name = 'Tony Goncalves';
INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2019, '00:00');
UPDATE movies SET show_time = '17:20' WHERE title = 'Guardians of the Galaxy 2';


-- ## Questions
--
-- 1.  Return ALL the data in the 'movies' table.
--SELECT * FROM movies;

-- 2.  Return ONLY the name column from the 'people' table
--SELECT name FROM people;

-- 3.  Oops! Someone at CodeClan spelled John's name wrong! Change it to reflect the proper spelling ('John Muir' should be 'John Moir').
--UPDATE people SET name = 'John Moir' WHERE name = 'John Muir';

-- 4.  Return ONLY your name from the 'people' table.
--SELECT name FROM people WHERE id = 9;

-- 5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
--DELETE FROM movies WHERE title = 'Batman Begins';

-- 6.  Create a new entry in the 'people' table with the name of one of the instructors.
--INSERT INTO people (name) VALUES ('Colin Riddel');

-- 7.  Tony Goncalves has decided to hijack our movie evening, Remove him from the table of people.
--DELETE FROM people WHERE name = 'Tony Goncalves';

-- 8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Captain Marvel'!! Create a new entry in the 'movies' table to reflect this.
--INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2019, '00:00')

-- 9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
--SELECT show_time FROM movies WHERE title = 'Guardians of the Galaxy';
--SELECT * FROM movies WHERE title = 'Guardians of the Galaxy 2';

-- ## Extension
--
-- 1.  Research how to delete multiple entries from your table in a single command.
--***If i want to remove everything from my table then i would just use the below command.
--DELETE FROM movies
--TRUNCATE TABLE movies
--***If i don't want to remove everything but instead remove just everything that meets a certain criteria then
--*** i could use
--DELETE FROM movies WHERE conditon;
