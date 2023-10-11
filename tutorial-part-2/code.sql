-- how to create a table in SQL
CREATE TABLE mytable (
    columnname1 DATATYPE,
    columnname2 DATATYPE
);

-- specify PRIMARY and FOREIGN KEYs
CREATE TABLE mytable (
    id INTEGER,
    columnname2 DATATYPE,
    othertable_id DATATYPE,
    columnname3 DATATYPE,
    PRIMARY KEY (id),
    FOREIGN KEY (othertable_id) REFERENCES othertable (id)
);

-- crate the table movies
CREATE TABLE movies (
    id INTEGER,
    name TEXT,
    year INTEGER,
    start_date TEXT,
    length INTEGER,
    rating REAL,
    PRIMARY KEY (id)
);

-- create table box office results
CREATE TABLE box_office_results (
    id INTEGER,
    year INTEGER,
    movie_id INTEGER,
    national REAL,
    international REAL,
    PRIMARY KEY (id),
    FOREIGN KEY (movie_id) REFERENCES movies (id)
);

-- create table actors
CREATE TABLE actors (
    id INTEGER,
    first_name TEXT,
    last_name TEXT,
    birth_year INTEGER,
    birth_month INTEGER,
    birth_day INTEGER,
    PRIMARY KEY (id)
);

-- create table acting
CREATE TABLE acting (
    movie_id INTEGER,
    actor_id INTEGER,
    type TEXT CHECK (type IN ('leading', 'supporting')),
    FOREIGN KEY (movie_id) REFERENCES movies (id),
    FOREIGN KEY (actor_id) REFERENCES actors (id)
);

-- create table directors
CREATE TABLE directors (
    id INTEGER,
    first_name TEXT,
    last_name TEXT,
    birth_year INTEGER,
    birth_month INTEGER,
    birth_day INTEGER,
    PRIMARY KEY (id)
);

-- create table directing
CREATE TABLE directing (
    movie_id INTEGER,
    director_id INTEGER,
    type TEXT CHECK (type IN ('leading', 'supporting')),
    FOREIGN KEY (movie_id) REFERENCES movies (id),
    FOREIGN KEY (director_id) REFERENCES directors (id)
);