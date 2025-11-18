-- 1. The Artists 
INSERT INTO Artists (artist_id, display_name, nationality, gender, birth_year) VALUES
(1001, 'Pablo Picasso', 'Spanish', 'Male', 1881),
(1002, 'Frida Kahlo', 'Mexican', 'Female', 1907),
(1003, 'Ansel Adams', 'American', 'Male', 1902),
(1004, 'Vincent van Gogh', 'Dutch', 'Male', 1853),
(1005, 'Andy Warhol', 'American', 'Male', 1928),
(1006, 'Georgia O''Keeffe', 'American', 'Female', 1887),
(1007, 'Claude Monet', 'French', 'Male', 1840),
(1008, 'Yayoi Kusama', 'Japanese', 'Female', 1929),
(1009, 'Louise Bourgeois', 'French', 'Female', 1911),
(1010, 'Jackson Pollock', 'American', 'Male', 1912),
(1011, 'Henri Matisse', 'French', 'Male', 1869),
(1012, 'Cindy Sherman', 'American', 'Female', 1954),
(1013, 'Mark Rothko', 'American', 'Male', 1903),
(1014, 'Rem Koolhaas', 'Dutch', 'Male', 1944),
(1015, 'Tadao Ando', 'Japanese', 'Male', 1941),
(1016, 'Lee Krasner', 'American', 'Female', 1908),
(1017, 'Gustav Klimt', 'Austrian', 'Male', 1862),
(1018, 'Piet Mondrian', 'Dutch', 'Male', 1872),
(1019, 'Frank Lloyd Wright', 'American', 'Male', 1867),
(1020, 'Faith Ringgold', 'American', 'Female', 1930);

-- 2. The Classifications
INSERT INTO Classifications (classification_name) VALUES
('Painting'),       -- ID 1
('Photography'),    -- ID 2
('Drawing'),        -- ID 3
('Sculpture'),      -- ID 4
('Print'),          -- ID 5
('Design'),         -- ID 6
('Architecture'),   -- ID 7
('Film'),           -- ID 8
('Video'),          -- ID 9
('Installation'),   -- ID 10
('Performance Art'),-- ID 11
('Textile'),        -- ID 12
('Ceramics'),       -- ID 13
('Collage'),        -- ID 14
('Illustration');   -- ID 15


-- 3. The Artworks 
INSERT INTO Artworks (object_id, title, medium, date_made, artist_id) VALUES
(12001, 'Starry Night Study', 'Charcoal on Paper', '1889', 1004), -- Van Gogh
(12002, 'Marilyn Diptych Print', 'Serigraph', '1962', 1005), -- Warhol
(12003, 'Black Iris', 'Oil on Canvas', '1926', 1006), -- O'Keeffe
(12004, 'Water Lilies Triptych', 'Oil on Canvas', '1915', 1007), -- Monet
(12005, 'The Snail', 'Cut-and-pasted paper', '1953', 1001), -- Picasso
(12006, 'The Kiss', 'Bronze', '1982', 1009), -- Bourgeois
(12007, 'Convergence Study', 'Enamel on canvas', '1952', 1010), -- Pollock
(12008, 'The Red Studio', 'Oil on Canvas', '1911', 1011), -- Matisse
(12009, 'Untitled Film Still #21', 'Gelatin silver print', '1978', 1012), -- Sherman
(12010, 'Black on Maroon', 'Oil on canvas', '1958', 1013), -- Rothko
(12011, 'Symphony of the Red Flower', 'Acrylic on canvas', '1968', 1008), -- Kusama
(12012, 'The Fallingwater Sketch', 'Pencil on paper', '1935', 1019), -- Wright
(12013, 'Composition with Red, Yellow, and Blue', 'Oil on canvas', '1921', 1018), -- Mondrian
(12014, 'The Steerage', 'Photogravure', '1907', 1003), -- Adams
(12015, 'The Column', 'Concrete and steel', '1995', 1015), -- Ando
(12016, 'The Bride', 'Oil and gold leaf', '1907', 1017), -- Klimt
(12017, 'Little Dancer', 'Bronze', '1881', 1009), -- Bourgeois
(12018, 'Campbell''s Soup Can', 'Polymer paint on canvas', '1962', 1005), -- Warhol
(12019, 'The Two Fridas Study', 'Pencil on paper', '1939', 1002), -- Kahlo
(12020, 'Portrait of an Architect', 'Acrylic on canvas', '1990', 1014), -- Koolhaas
(12021, 'Untitled Abstract', 'Oil on canvas', '1958', 1016), -- Krasner
(12022, 'Spiral Jetty Plan', 'Map and Ink', '1970', 1019), -- Wright
(12023, 'Autumn Rhythm', 'Enamel on canvas', '1950', 1010), -- Pollock
(12024, 'The Dance', 'Oil on Canvas', '1910', 1011), -- Matisse
(12025, 'The Great Wave Print', 'Woodcut', '1831', 1007), -- Monet (Hypothetical print)
(12026, 'Self-Portrait with Thorns', 'Oil on Canvas', '1940', 1002), -- Kahlo
(12027, 'The Kiss (Painting)', 'Oil on Canvas', '1908', 1017), -- Klimt
(12028, 'Box with the Sound of its own Making', 'Assemblage', '1961', 1009), -- Bourgeois
(12029, 'Fallingwater Model', 'Cork and Wood', '1939', 1019), -- Wright
(12030, 'Abstract Expression 1', 'Oil on Canvas', '1949', 1016), -- Krasner
(12031, 'Untitled #276', 'Chromogenic print', '1993', 1012), -- Sherman
(12032, 'Yellow Calla', 'Pastel on paper', '1929', 1006), -- O'Keeffe
(12033, 'Number 3, 1949', 'Oil on canvas', '1949', 1010), -- Pollock
(12034, 'Water Lilies Study II', 'Oil on canvas', '1916', 1007), -- Monet
(12035, 'The Weeping Woman Sketch', 'Pencil on paper', '1937', 1001), -- Picasso
(12036, 'Untitled (Dots)', 'Acrylic on canvas', '1995', 1008), -- Kusama
(12037, 'Red Square', 'Oil on Canvas', '1915', 1018), -- Mondrian
(12038, 'Guggenheim Museum Bilbao Model', 'Architectural Model', '1997', 1014), -- Koolhaas
(12039, 'Basket Quilt', 'Fabric and thread', '1990', 1020), -- Ringgold
(12040, 'Composition II in Red and Blue', 'Oil on canvas', '1930', 1018), -- Mondrian
(12041, 'Portrait of Dora Maar', 'Oil on Canvas', '1937', 1001), -- Picasso
(12042, 'Self-Portrait (Untitled)', 'Gelatin silver print', '1985', 1012), -- Sherman
(12043, 'Irises', 'Oil on Canvas', '1889', 1004), -- Van Gogh
(12044, 'Untitled (Brillo Box)', 'Plywood, paint', '1964', 1005), -- Warhol
(12045, 'Landscape near Taos', 'Oil on canvas', '1929', 1006), -- O'Keeffe
(12046, 'The Joy of Life', 'Oil on canvas', '1906', 1011), -- Matisse
(12047, 'The Flatiron Building', 'Photogravure', '1903', 1003), -- Adams
(12048, 'The Embrace', 'Bronze', '1990', 1009), -- Bourgeois
(12049, 'Gold and Black Abstraction', 'Oil on canvas', '1921', 1016), -- Krasner
(12050, 'The Bridge', 'Oil on canvas', '1913', 1017); -- Klimt


-- 4. Insert 50 Acquisition Details (1:1 with Artworks)
INSERT INTO AcquisitionDetails (object_id, date_acquired, credit_line, is_public_domain) VALUES
(12001, '1995-10-10', 'Gift of Estate', TRUE),
(12002, '2001-05-20', 'Museum Purchase', FALSE),
(12003, '1950-01-01', 'Founders Collection', TRUE),
(12004, '1980-08-01', 'Private Donation', FALSE),
(12005, '1960-03-01', 'Gift of Artist', TRUE),
(12006, '2005-07-20', 'Museum Purchase', FALSE),
(12007, '1955-09-01', 'Acquired with Funds', TRUE),
(12008, '1970-04-10', 'Gift of MoMA Trustees', FALSE),
(12009, '1990-01-01', 'Acquired with Funds', FALSE),
(12010, '1975-06-15', 'Partial Gift', TRUE),
(12011, '1998-11-05', 'Museum Purchase', FALSE),
(12012, '1985-03-12', 'Gift of Family', TRUE),
(12013, '1940-02-01', 'Acquired with Funds', TRUE),
(12014, '1980-12-01', 'Museum Purchase', FALSE),
(12015, '2010-01-01', 'Architectural Donation', FALSE),
(12016, '1970-07-07', 'Gift of Estate', TRUE),
(12017, '1955-05-01', 'Museum Purchase', TRUE),
(12018, '1963-09-01', 'Gift of the Artist', FALSE),
(12019, '1999-04-20', 'Museum Purchase', FALSE),
(12020, '2000-10-10', 'Acquired with Funds', FALSE),
(12021, '1972-11-11', 'Gift of Artist', TRUE),
(12022, '1980-01-01', 'Gift of Family', FALSE),
(12023, '1953-06-01', 'Museum Purchase', TRUE),
(12024, '1975-04-01', 'Private Donation', FALSE),
(12025, '1988-03-01', 'Acquired with Funds', FALSE),
(12026, '1992-02-02', 'Museum Purchase', FALSE),
(12027, '1995-03-03', 'Gift of Estate', TRUE),
(12028, '1965-05-05', 'Museum Purchase', TRUE),
(12029, '1978-07-07', 'Gift of Family', FALSE),
(12030, '1950-08-08', 'Gift of Artist', TRUE),
(12031, '1998-09-09', 'Museum Purchase', FALSE),
(12032, '1960-10-10', 'Gift of Estate', TRUE),
(12033, '1955-11-11', 'Acquired with Funds', TRUE),
(12034, '1970-12-12', 'Private Donation', FALSE),
(12035, '1980-01-20', 'Museum Purchase', FALSE),
(12036, '2000-03-25', 'Gift of Artist', FALSE),
(12037, '1945-04-01', 'Acquired with Funds', TRUE),
(12038, '2002-05-15', 'Architectural Donation', FALSE),
(12039, '1992-06-20', 'Museum Purchase', FALSE),
(12040, '1950-07-01', 'Gift of Estate', TRUE),
(12041, '1970-08-10', 'Museum Purchase', FALSE),
(12042, '1987-09-15', 'Acquired with Funds', FALSE),
(12043, '1890-10-01', 'Private Donation', TRUE),
(12044, '1965-11-20', 'Gift of the Artist', FALSE),
(12045, '1955-12-01', 'Founders Collection', TRUE),
(12046, '1970-01-01', 'Museum Purchase', FALSE),
(12047, '1970-02-15', 'Gift of Estate', TRUE),
(12048, '2000-03-20', 'Museum Purchase', FALSE),
(12049, '1972-04-01', 'Acquired with Funds', TRUE),
(12050, '1995-05-05', 'Private Donation', FALSE);


-- 5. Artwork Classifications (M:N relationship)

INSERT INTO ArtworkClassifications (object_id, classification_id) VALUES 
-- Drawing, Print, Painting Examples (Rows 1-97 from previous step)
(12001, 3), (12001, 15), 
(12002, 5), (12002, 2),  
(12003, 1),              
(12004, 1), (12004, 3),  
(12005, 3), (12005, 14), 
(12006, 4), (12006, 12), 
(12007, 1),              
(12008, 1), (12008, 3),  
(12009, 2), (12009, 9),  
(12010, 1),              
(12011, 1), (12011, 10), 
(12012, 7), (12012, 3),  
(12013, 1),              
(12014, 2),              
(12015, 7), (12015, 3),  
(12016, 1), (12016, 3),  
(12017, 4),              
(12018, 1), (12018, 5),  
(12019, 3), (12019, 15), 
(12020, 7), (12020, 6),  
(12021, 1),              
(12022, 7),              
(12023, 1),              
(12024, 1), (12024, 11), 
(12025, 5),              
(12026, 1),              
(12027, 1),              
(12028, 4), (12028, 14), 
(12029, 7),              
(12030, 1),              
(12031, 2), (12031, 9),  
(12032, 3), (12032, 1),  
(12033, 1),              
(12034, 1),              
(12035, 3),              
(12036, 1), (12036, 10), 
(12037, 1),              
(12038, 7), (12038, 6),  
(12039, 12), (12039, 1), 
(12040, 1),              
(12041, 1),              
(12042, 2),              
(12043, 1),              
(12044, 4), (12044, 6),  
(12045, 1),              
(12046, 1),              
(12047, 2),              
(12048, 4),              
(12049, 1),              
(12050, 1),              
(12018, 6), 
(12010, 11), 
(12040, 6), 
(12041, 14); 
