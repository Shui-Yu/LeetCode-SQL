SELECT Firstname, Lastname, City, State
FROM Person P
LEFT JOIN Address A
ON P.PersonId = A.PersonId;
