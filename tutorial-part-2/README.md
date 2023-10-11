# SQL-Beginner Tutorial Part 2: Data Types and Designing a Database

Welcome back to Part 2 of my SQL Beginner Tutorial. Today, we’ll delve into data types and then proceed to design our first database together.

## ER Diagram of the database movies_2019.db

'''
erDiagram              
    BOX_OFFICE_RESULTS {
        id INTEGER
        year INTEGER
        movie_id INTEGER
        national ROUND
        international ROUND
        rating REAL
    } 
    MOVIES {
        id INTEGER
        name TEXT
        year INTEGER
        start_date TEXT 
        length INTEGER
        rating REAL        
    } 
    

    DIRECTING {
        movie_id INTEGER 
        director_id INTEGER 
    }  

    DIRECTORS {
        id INTEGER
        first_name TEXT
        last_name TEXT
        birth_year INTEGER 
        birth_month INTEGER 
        birth_day INTEGER
    }     
    ACTING {
        movie_id INTEGER
        actor_id INTEGER
        type TEXT
    }
    
    ACTORS {
        id INTEGER
        first_name TEXT
        last_name TEXT
        birth_year INTEGER
        birth_month INTEGER
        birth_day INTEGER
    }   

    ACTING }o--o{ ACTORS : "can be in several movies"
    MOVIES }o--o{ ACTING : "has several actors"
    MOVIES }o--|| DIRECTING : "allows only one director"
    DIRECTING }o--o{ DIRECTORS : "can direct several movies" 
    MOVIES ||--o{ BOX_OFFICE_RESULTS : "a movie can have several box office results"   

'''


Read the article on Medium: https://medium.com/@olofbaage/sql-beginner-tutorial-part-2-data-types-and-designing-a-database-f6be58328978
