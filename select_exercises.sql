USE codeup_test_db;

-- The name of all pink floyd albums
SELECT name FROM albums WHERE artist='Pink Floyd';

-- The year sgt.pepper's lonely hearts club band was released'
SELECT release_date FROM albums WHERE name='Sgt. Peppers Lonely Hearts Club Band';

-- The genre of Nevermind
SELECT genre FROM albums WHERE name='Nevermind';

-- Which albums were released in the 1990s
SELECT name FROM albums WHERE 1990 <= release_date < 2000;

-- Which albums had less than 20 million certified sales
SELECT name FROM albums WHERE sales < 20;

-- All the albums with a genre of 'Rock'
SELECT name FROM albums WHERE genre='Rock';