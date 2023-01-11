create database island_hopping

use island_hopping

Create TABLE IF NOT EXISTS Continent (
	continent_id INT auto_increment primary Key,
    location VARCHAR(255) NOT NULL,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
) ENGINE=INNODB;

