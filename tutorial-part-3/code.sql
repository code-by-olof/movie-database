-- add colums to movies table
ALTER TABLE movies 
ADD category TEXT CHECK (category IN ('action', 'drama', 'animation', 'kids', 'comedy', 'fantasy', 'scifi', 'horror', 'western')) ;

 -- create tables nominations and awards
 CREATE TABLE awards (
    id INTEGER,
    academy TEXT,
    name TEXT,
    category TEXT,
    year INTEGER,
    PRIMARY KEY (id)    
 );

 CREATE TABLE nominated (
    movie_id INTEGER,
    actor_id INTEGER,
    award_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies (id),
    FOREIGN KEY (actor_id) REFERENCES actors (id),
    FOREIGN KEY (award_id) REFERENCES awards (id)
 );

  CREATE TABLE won_award (
    movie_id INTEGER,
    actor_id INTEGER,
    award_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies (id),
    FOREIGN KEY (actor_id) REFERENCES actors (id),
    FOREIGN KEY (award_id) REFERENCES awards (id)
 );
