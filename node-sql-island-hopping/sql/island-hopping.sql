create database island_hopping

use island_hopping

Create TABLE IF NOT EXISTS continent (
	continent_id INT auto_increment primary Key,
    location VARCHAR(255) NOT NULL,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
) ENGINE=INNODB;

Create TABLE IF NOT EXISTS country (
	country_id INT auto_increment primary key,
    location VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
) ENGINE=INNODB;

alter table Country add column continent_id int;
alter table Country add foreign key(continent_id) references continent(continent_id)

Create TABLE IF NOT EXISTS island_chain (
	island_id INT auto_increment primary key,
    location VARCHAR(600) NOT NULL,
    country_id int,
    adventures VARCHAR(600) NOT NULL,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp,
    foreign key(country_id) references country(country_id) on update cascade on delete cascade
) ENGINE=INNODB;

insert into continent(location) values('North America');
insert into continent(location) values('Asia');
insert into continent(location) values('Europe');

select * from continent;

insert into country(location, description) values("Bahamas", "A tourist's wet dream, palm-fringed tropical islands surrounded by turquoise waters.");
insert into country(location, description) values("Thailand", "A country of mountains, hills, plains and a long coastline along the Gulf of Thailand (1,875 km) and the Andaman Sea (740 km), not including the coastlines of some 400 islands, most of them in the Andaman Sea.");
insert into country(location, description) values("Japan", "An archipelago, or string of islands, on the eastern edge of Asia.");
insert into country(location, description) values("Croatia", "Famed for its scenic pebbled beaches, which are beautifully lapped by crystal-clear waters.");
insert into country(location, description) values("Greece", "Greece is known for being the cradle of Western Civilization, the birthplace of democracy, the Olympic Games, and its ancient history and magnificent temples.");
insert into country(location, description) values("Philippines","Asia's pearl of the orient for the richness of its culture and the beauty of its landscape. It is home to centuries old churches, turn of the century mansions, ancient forts and modern museums.");

select * from country;

update Country set continent_id = 1 where country_id = 1;
update Country set continent_id = 2 where country_id = 2;
update Country set continent_id = 2 where country_id = 3;
update Country set continent_id = 3 where country_id = 4;
update Country set continent_id = 3 where country_id = 5;
update Country set continent_id = 2 where country_id = 6;

insert into island_chain(location, adventures) values("Nassau","Home to the huge Atlantis resort 
and its massive waterpark. Most beautiful 
beaches in the world, indulging in world-class
dining and nightlife, unwinding in award-
winning spas, embarking on a thrilling 
underwater adventure.");
insert into island_chain(location, adventures) values("Harbour Island","Famous for its three-mile-long pink beach 
that runs the entire length of the island on its
eastern side. The beach is protected by an 
outlying coral reef that makes the turquoise 
clear water one of the safest and most 
alluring swimming and snorkeling spots in 
the Bahamas.");
insert into island_chain(location, adventures) values("Exuma","Known for its many “elusive” 
beaches, including world-famous Lighthouse 
Beach, Twin Coves Beach, Double Bay 
Beach, French Leave Beach and so many 
others.");
insert into island_chain(location, adventures) values("Pandanon Island","While Pandanon Island isn’t the best spot for diving and snorkeling, tourists take delight in
swimming on the clear, shallow waters of the island. Its powdery white sand is best for
frolicking by the beach or sunbathing.");
insert into island_chain(location, adventures) values("Olango Island","The best time to go to Olango Island, especially if you're planning to visit the Wildlife Sanctuary, is in November when birds are flying south for the breeding season.");
insert into island_chain(location, adventures) values("Nalusuan Island","The long sand bar of Nalusuan island is a sanctuary to all the  marine creatures and to the nature lovers. You can literally reach at arm’s length with the abundance of sea life here. The fishes that you have only seen in your plates will be see here in their natural habitat.You will feel like you are a part of the sea, the island and the life under water.");
insert into island_chain(location, adventures) values("Koh Tao","The island is well known 
for scuba diving and snorkeling, as well as 
hiking, rock climbing, and bouldering.");
insert into island_chain(location, adventures) values("Koh Pha Ngan","An island that's world-
famous for its beach parties, the iconic full-
moon and half-moon parties.");
insert into island_chain(location, adventures) values("Koh Samui","A popular resort island in 
the Gulf of Thailand with stunning beaches 
and plenty of fun activities.");
insert into island_chain(location, adventures) values("Odaiba","A man-made island and 
entertainment district, home to plenty of 
shopping and dining.");
insert into island_chain(location, adventures) values("Ogasawara Island","Famous for the 
scale of wildlife in the waters around the 
island, including whales and dolphins. ");
insert into island_chain(location, adventures) values("Yakushima Island"," Famous for 
dense cedar forests and incredible hiking.");
insert into island_chain(location, adventures) values("Hvar","Rich history, superb cuisine, 
diverse nightlife and breath-taking 
nature are the reasons why both global 
celebrities and those in search of unique 
holiday locations choose Hvar");
insert into island_chain(location, adventures) values("Dubrovnik","A captivating place to spend a 
few days, with medieval fortifications, 
limestone streets, seafood restaurants, and 
rocky beaches to explore. However, there's a
selection of unique adventures for those who
want to get off the tourist trail.");
insert into island_chain(location, adventures) values("Split","Known for its ancient centre, 
beautiful architecture, and exquisite 
cuisine. Whether you wish to admire 
impressive Roman monuments, spend the 
day on a picturesque beach with crystal-
clear waters, or walk along one of the most
beautiful promenades on the Adriatic 
Coast.");
insert into island_chain(location, adventures) values("Paros"," Known for its great 
beaches, lively nightlife, and wonderful, 
white-washed towns.");
insert into island_chain(location, adventures) values("Mykonos","A smaller Greek island but offers
big excitement for tourist in its culture, 
restaurants, music, and nightlife");
insert into island_chain(location, adventures) values("Santorini","Renowned for its tradition in 
wine making and boasts vast vineyards and 
fine wine varieties. Its boutique wineries are 
a must as they offer the ultimate ambrosial 
experience.");

select * from island_chain;

update island_chain set country_id = 1 where island_id = 1;
update island_chain set country_id = 1 where island_id = 2;
update island_chain set country_id = 1 where island_id = 3;
update island_chain set country_id = 2 where island_id = 7;
update island_chain set country_id = 2 where island_id = 8;
update island_chain set country_id = 2 where island_id = 9;
update island_chain set country_id = 3 where island_id = 10;
update island_chain set country_id = 3 where island_id = 11;
update island_chain set country_id = 3 where island_id = 12;
update island_chain set country_id = 4 where island_id = 13;
update island_chain set country_id = 4 where island_id = 14;
update island_chain set country_id = 4 where island_id = 15;
update island_chain set country_id = 5 where island_id = 16;
update island_chain set country_id = 5 where island_id = 17;
update island_chain set country_id = 5 where island_id = 18;
update island_chain set country_id = 6 where island_id = 4;
update island_chain set country_id = 6 where island_id = 5;
update island_chain set country_id = 6 where island_id = 6;

Create TABLE IF NOT EXISTS waterway (
	waterway_id INT auto_increment primary KEY,
    location VARCHAR(255) NOT NULL,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
)ENGINE=INNODB;