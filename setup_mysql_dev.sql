-- Creates a MySQL server with:
-- Database hbnb_dev_db.
-- User hbnb_dev with password hbnb_dev_pwd in localhost.
-- Grants all priviledges for hbnb_dev on hbnb_dev_db.
-- Grants SELECT priviledge for hbnb_dev on performance.

-- Create the database if it doesn't exist.
CRAETE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Create the user if it doesn't exist
CRAETE USER IF NOT EXISTS 'hbnb_dev'@'localhost'
IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant all priviledges on hbnb_dev_db to hbnb_dev
GRANT ALL PRIVILEDGES ON hbnb_dev_db.* TO
'hbnb_dev'@'localhost';

-- Grant SELECT priviledge on performance_schema to hbnb_dev
GRANT SELECT ON performance_schema.* TO
'hbnb_dev'@'localhost';

-- Flush priviledges to apply changes
FLUSH PRIVILEDGES;

