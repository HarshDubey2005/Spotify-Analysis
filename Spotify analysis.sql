create database spotify;
use spotify;
select * from songs;
select genre, avg (danceability) as avg_danceability
from songs 
group by genre 
order by avg_danceability desc;

-- total songs relesed each year 
select year,count(*) as total_songs
from songs 
group by year 
order by year desc;

-- find songs with high energy and danceability 
select song,artist,energy,danceability 
from songs
where energy > 0.8 and danceability > 0.7;

-- percentage of explicit songs 
select (sum(explicit=true)/count(*))*1000 as explicit_percentage 
from songs;

-- average duration of songs by years 
select year,avg (duration_ms) as avg_duration 
from songs
group by year 
order by year desc;

-- most commmon genre
select genre,count(*) as genre_count
from songs 
group by genre 
order by genre_count desc
limit 1;

-- top five songs by duration 
select * from songs 
order by duration_ms 
limit 5;

-- popular year 
select year,avg(popularity) as avg_popularity
from songs
group by year
order by year desc;

-- most popular genre 
select genre,avg(popularity) as avg_popularity
from songs 
group by genre 
order by avg_popularity desc
limit 1;

-- songs with highest loundness

select song,artist,loudness
from songs 
order by loudness desc 
limit 5;

-- averge valence (happiness) by genre 
select genre,avg(valence) as avg_valence 
from songs 
group by genre 
order by avg_valence desc;

-- songs with instrumentalness greater than 0.5
select artist,song,instrumentalness
from songs 
where instrumentalness > 0.5
order by instrumentalness desc;
-- total number of explicit songs by year 
select year,count(*) as explicit_songs
from songs
where explicit= true 
group by year 
order by year desc;

-- averge tempo by genre 
select genre,avg(tempo) as avg_tempo
from songs 
group by genre 
order by avg_tempo desc;

-- artist with the most songs in the datatset
select artist,count(*) as total_songs
from songs
group by artist 
order by total_songs desc
limit 5;

-- correlation between danceability and popularity
select danceability,popularity 
from songs
where danceability is not null and popularity is not null
order by popularity desc; 