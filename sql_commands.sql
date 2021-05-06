SELECT id, name, age, breed FROM cats;
SELECT * FROM cats;
SELECT name FROM cats;
SELECT DISTINCT name FROM cats;
SELECT * FROM cats WHERE name = 'Maru';
SELECT * FROM cats WHERE name = "Maru";
SELECT * FROM cats WHERE age < 4;
SELECT * FROM cats WHERE id > 1;
UPDATE cats SET name = 'Hana' WHERE name = 'Hannah';
DELETE FROM cats WHERE id = 3;
-- .headers on
-- .mode column
-- .width auto
-- .width 1 3 5
SELECT * FROM cats ORDER BY age;
SELECT * FROM cats ORDER BY age ASC;
SELECT * FROM cats ORDER BY age DESC;
SELECT * FROM cats ORDER BY age DESC LIMIT 1;
SELECT * FROM cats ORDER BY age DESC LIMIT 3;
SELECT * FROM cats WHERE age BETWEEN 1 AND 3;
SELECT * FROM cats WHERE age BETWEEN 1 AND 3 ORDER BY age;
SELECT name FROM cats WHERE age BETWEEN 1 and 3 ORDER BY age DESC;
INSERT INTO cats (name, age, breed) VALUES (NULL, NULL, 'Tabby');
SELECT * FROM cats WHERE name IS NULL;
SELECT COUNT(owner_id) FROM cats WHERE owner_id = 1;
SELECT COUNT(age) FROM cats WHERE age < 5;
SELECT breed, COUNT(breed) FROM cats GROUP BY breed;
SELECT breed, owner_id, COUNT(breed) FROM cats GROUP BY breed, owner_id;
SELECT * FROM cats, dogs;
SELECT cats.name, dogs.name FROM cats, dogs;