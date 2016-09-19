USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT * FROM albums WHERE release_date between 1990 and 1999;
SELECT * FROM albums WHERE sales > 20.0;
SELECT * FROM albums WHERE genre = 'Rock' OR 'Grunge' OR 'Progressive Rock';