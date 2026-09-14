CREATE TABLE users (
	user_id INTEGER PRIMARY KEY,
	name VARCHAR(100) NOT NULL
)

CREATE TABLE movies (
	movie_id INTEGER PRIMARY KEY,
	title VARCHAR(100) NOT NULL
)

CREATE TABLE ratings(
	user_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),

	PRIMARY KEY (user_id, movie_id),

	FOREIGN KEY (user_id)
		REFERENCES users(user_id),

	FOREIGN KEY (movie_id)
		REFERENCES movies(movie_id)
)

INSERT INTO users (user_id, name)
VALUES 
	(1, 'Alex Carter'),
    (2, 'Maya Patel'),
    (3, 'Daniel Kim'),
    (4, 'Sofia Martinez'),
    (5, 'Marcus Johnson'),
    (6, 'Priya Shah'),
    (7, 'Ethan Brooks'),
    (8, 'Nina Rahman');

INSERT INTO movies (movie_id, title)
VALUES
    (1, 'Dune: Part Two'),
    (2, 'Inside Out 2'),
    (3, 'Deadpool & Wolverine'),
    (4, 'Wicked'),
    (5, 'Alien: Romulus'),
    (6, 'The Substance');

INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (1, 1, 5),
    (1, 2, 4),
    (1, 3, 4),
    (1, 4, 5),
    (1, 5, 3);

INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (2, 1, 4),
    (2, 2, 5),
    (2, 3, 5),
    (2, 5, 4),
    (2, 6, 4);

INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (3, 1, 5),
    (3, 3, 4),
    (3, 4, 4),
    (3, 5, 3),
    (3, 6, 5);

INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (4, 1, 4),
    (4, 2, 4),
    (4, 4, 5),
    (4, 5, 4),
    (4, 6, 4);

INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (5, 1, 3),
    (5, 2, 5),
    (5, 3, 4),
    (5, 4, 4),
    (5, 6, 5);

INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (6, 1, 5),
    (6, 2, 4),
    (6, 3, 5),
    (6, 4, 3),
    (6, 5, 4);

INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (7, 2, 5),
    (7, 3, 3),
    (7, 4, 4),
    (7, 5, 5),
    (7, 6, 4);


INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (8, 1, 4),
    (8, 3, 5),
    (8, 4, 5),
    (8, 5, 4),
    (8, 6, 3);


SELECT COUNT(*) AS total_ratings
FROM ratings;

SELECT
    u.user_id,
    u.name,
    m.movie_id,
    m.title,
    r.rating
FROM ratings AS r
JOIN users AS u
    ON r.user_id = u.user_id
JOIN movies AS m
    ON r.movie_id = m.movie_id
ORDER BY
    u.user_id,
    m.movie_id;









	

