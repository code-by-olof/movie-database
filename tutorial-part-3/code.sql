-- add colums to movies table
ALTER TABLE movies 
ADD category TEXT CHECK (category IN ('action', 'drama', 'animation', 'kids', 'comedy', 'fantasy', 'scifi', 'horror', 'western')) ;