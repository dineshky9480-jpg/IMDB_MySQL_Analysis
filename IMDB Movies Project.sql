SELECT
  d.id AS director_id,
  d.name AS director_name,
  d.gender AS director_gender,
  d.department AS director_department,
  m.uid AS movie_uid,
  m.original_title,
  m.title,
  m.budget,
  m.popularity,
  m.release_date,
  m.revenue,
  m.vote_average,
  m.vote_count,
  m.overview,
  m.tagline
FROM directors d
JOIN movies m ON m.director_id = d.id;


-- a) Can you get all data about movies? 
select * from movies;

-- b) How do you get all data about directors?
select * from directors;

-- c)Check how many movies are present in IMDB?
select count(*) as Total_Movies from movies;

-- d)Find these 3 directors: James Cameron ; Luc Besson ; John Woo
select * from directors
where name in ("james Cameron","Luc Besson","john Woo");

-- e)Find all directors with name starting with S.
select * from directors
where name like "s%";

-- f)Count female directors.
select count(*) as female from directors
where gender=1;

-- g)Find the name of the 10th first women directors?
select * from directors
where gender=1 
order by name asc
limit 1 offset 9;

-- h)What are the 3 most popular movies?
select uid,popularity,original_title,vote_count,release_date from movies
order by popularity desc limit 3;

-- i)what are the 3 most bankable movies?
select uid,revenue,original_title,vote_count,release_date from movies
order by revenue desc limit 3;

-- j)what is the most awarded average vote since the january
select uid, original_title, vote_average, vote_count, release_date from movies
where release_date >="2000-01-01"
order by vote_average desc, vote_count DESC
LIMIT 1;

-- k)which movies(s) were directed by Brenda Champman?
select m.uid, m.original_title, m.release_date, m.revenue
from movies m  
JOIN directors d ON m.director_id = d.id
WHERE d.name = 'Brenda Chapman';

-- l)Which director made the most movies?
select d.id, d.name, COUNT(m.uid) AS movies_count
from directors d
join movies m on m.director_id = d.id
group by d.id, d.name
order by movies_count desc
LIMIT 1;

-- m)Which director is the most bankable?
select d.id, d.name, sum(m.revenue) AS total_revenue
from directors d
join movies m on m.director_id = d.id
group by d.id, d.name
order by total_revenue desc
limit 1;
