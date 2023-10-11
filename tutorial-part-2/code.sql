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