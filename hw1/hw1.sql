CREATE TABLE Edges (
    Source INT,
    Destination INT);

INSERT INTO Edges
VALUES (10, 5),
       (6, 25),
       (1, 3),
       (4, 4);

SELECT E.Source, E.Destination
FROM Edges as E
WHERE E.Source > E.Destination
