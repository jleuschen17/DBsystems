CREATE TABLE MyRestaurants (
    Name VARCHAR(100),
    Food VARCHAR(100),
    Distance INT,
    Date VARCHAR(100),
    Satisfied INT);

INSERT INTO MyRestaurants
VALUES ('Ritz-Carleton', 'Lobster', 445, '2003-02-17', 1),
       ('Baymont', 'Shit', 25, '2010-11-22', 0),
       ('Four-Seasons', 'Calamari', 1223, '2019-08-15', NULL),
       ('Holiday-INN', 'Waffles', 23, '2000-09-24', 1),
       ('Hilton', 'Bread', 2334, '2009-12-24', 0);

.MODE csv

SELECT * FROM MyRestaurants
