# MoMA Art Metadata Service (PostgreSQL) 

This project demonstrates the design and implementation of a fully normalized relational database system to manage the metadata for a large art collection, modeled after the structure of the Museum of Modern Art (MoMA) collection data.

## Project Goals

* **Database Design:** Implement a normalized schema (3NF) to efficiently manage data relationships.
* **Foreign Key Enforcement:** Use Primary and Foreign Keys to enforce referential integrity across all tables.
* **Data Management:** Populate tables with a realistic, manually linked sample set of **~200 records** (50 Artworks) for robust query testing.
* **SQL Demonstration:** Showcase advanced SQL proficiency using multi-table JOINs, aggregation, and data maintenance commands.

## Schema Design Highlights (6 Tables)

The database is built around a core set of highly normalized tables:

1.  **`Artists`**: Stores creator details (replaces the original 'Photographers' table).
2.  **`Artworks`**: The primary entity table, linked 1:M to `Artists`.
3.  **`Classifications`**: Stores unique tags (e.g., 'Painting', 'Photography').
4.  **`AcquisitionDetails`**: 1:1 details (e.g., `date_acquired`, `is_public_domain`).
5.  **`ArtworkClassifications`**: The essential **Many-to-Many (M:N)** join table, linking `Artworks` to multiple `Classifications`.

## Key Technical Files

| File | Description |
| :--- | :--- |
| `docker-compose.yml` | Defines the local PostgreSQL environment setup using Docker. |
| `01_schema_create.sql` | Contains all `CREATE TABLE` statements with PRIMARY KEY and FOREIGN KEY constraints. |
| `02_data_insert.sql` | Contains over 200 `INSERT` statements with guaranteed data integrity for demonstration. |
| `03_queries_demonstration.sql` | The final script used to showcase advanced SQL skills (see below). |

## Showcase Queries (Demonstrated Skills)

The following queries prove proficiency in complex data retrieval and management:

### 1. Multi-Table Join (4-Way JOIN)
* **Skill:** Navigating the **M:N** relationship between Artists and Classifications.
* **Goal:** Find all American female artists who created artworks classified as 'Photography'.

### 2. Aggregation and Reporting
* **Skill:** Using `GROUP BY`, `COUNT()`, and `ORDER BY` for business intelligence.
* **Goal:** Generate a report showing the top 5 artists based on the number of artworks in the collection.

### 3. Data Maintenance (UPDATE with JOIN)
* **Skill:** Performing conditional data manipulation across joined tables.
* **Goal:** Update the `is_public_domain` status for all artworks created before 1970.
