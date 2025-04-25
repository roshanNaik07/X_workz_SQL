CREATE database Game;

CREATE database Art;

CREATE database FoodFest;

CREATE database Movie;

CREATE table game_features(id int , in_game_name varchar(20) , add_friend varchar(20), lobby_count int , event_theme varchar(20) , winner varchar(20) , skin_color varchar(20), character_name varchar(20), 
 pass_price int , player_rank int);

CREATE table art_details(id int , art_name varchar(20) , art_type varchar(20), artist_name varchar(20),
art_price int , frame_design varchar(15) , art_size varchar(10) , customer_name varchar(20), delivery_address varchar(20), date_of_completion date);

CREATE table fest_details(id int , fest_name varchar(20), fest_date date , place_name varchar(20), guest_name varchar(20),
guest_count int , shop_count int ,shop_number int);