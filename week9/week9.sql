use movie_db;

select * from denormalized;

load data infile "E:\\mySQL\\SQL\\Uploads\\denormalized_movie_db.csv"

into table denormalized
columns terminated by ',';

show variables like "secure_file_priv";

insert into movies (movie_id, title, ranking, rating, year, votes, duration, oscars, budget)
select distinct movie_id, title, ranking, rating, year, votes, duration, oscars, budget
from denormalized;

select * from movies;

insert into languages(movie_id, language_name)
select distinct movie_id, language_name
from denormalized;

select * from languages;

insert into countries (country_id, country_name)
select distinct producer_country_id, producer_country_name
from denormalized
union
select distinct star_country_id, star_country_name
from denormalized
union
select distinct director_country_id, director_country_name
from denormalized;


select * from countries;