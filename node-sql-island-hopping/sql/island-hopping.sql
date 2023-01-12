create database island_hopping

use island_hopping

Create TABLE IF NOT EXISTS Continent (
	continent_id INT auto_increment primary Key,
    location VARCHAR(255) NOT NULL,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
) ENGINE=INNODB;

Create TABLE IF NOT EXISTS Country (
	country_id INT auto_increment primary key,
    location VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
) ENGINE=INNODB;

alter table Country add column continent_id int;
alter table Country add foreign key(continent_id) references Continent(continent_id)

    