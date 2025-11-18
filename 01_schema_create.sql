-- 1. Artists Table 
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,                       
    display_name VARCHAR(255) NOT NULL,
    nationality VARCHAR(100),
    gender VARCHAR(50),
    birth_year INT
);

-- 2. Classifications Table 
CREATE TABLE Classifications (
    classification_id SERIAL PRIMARY KEY,            -- new primary key for the table
    classification_name VARCHAR(50) UNIQUE NOT NULL  -- such as the type or art: sculpture, painting etc
);

-- 3. Artworks Table 
CREATE TABLE Artworks (
    object_id INT PRIMARY KEY,                       
    title VARCHAR(500) NOT NULL,
    medium VARCHAR(500),                             -- the material an artist uses to create a work, such as paint etc
    date_made VARCHAR(50),                           
    artist_id INT REFERENCES Artists(artist_id)      -- Foreign Key (FK) to Artists
);

-- 4. AcquisitionDetails Table
CREATE TABLE AcquisitionDetails (
    object_id INT PRIMARY KEY REFERENCES Artworks(object_id), -- 1:1 relationship FK and PK
    date_acquired DATE,
    credit_line VARCHAR(500),                        -- provides MoMA's rights
    is_public_domain BOOLEAN                         
);

-- 5. ArtworkClassifications Table (works as a JOIN TABLE linking Artworks to Classifications)
CREATE TABLE ArtworkClassifications (
    object_id INT REFERENCES Artworks(object_id), 
    classification_id INT REFERENCES Classifications(classification_id),   
    PRIMARY KEY (object_id, classification_id)       -- Composite Primary Key
);