

# IMDB Movies Data Analysis 🎬

## 📌 Project Overview
This project analyzes IMDB movie data using **MySQL** to extract meaningful insights about movie performance, ratings, genres, and directors. The objective is to strengthen SQL querying skills while answering real-world analytical questions from the entertainment domain.

---

## 🎯 Objectives
- Analyze movie ratings and votes
- Identify top-performing movies and genres
- Study director and actor performance
- Explore trends in movie releases and revenue
- Practice complex SQL queries and aggregations

---

## 🗂 Dataset Description
The dataset contains information related to IMDB movies, including:
- Movie title
- Genre
- Director
- Release year
- Duration
- IMDB rating
- Votes
- Revenue / Gross income

---

## 🛠 Tools Used
- **MySQL** – Data analysis and querying
- **SQL** – Joins, subqueries, CTEs, aggregations
- **PowerPoint / PDF** – Project explanation and presentation

---

## 🧾 Sample SQL Queries
```sql
-- Top rated movies
SELECT movie_title, imdb_rating
FROM movies
ORDER BY imdb_rating DESC
LIMIT 10;

-- Movies count by genre
SELECT genre, COUNT(*) AS total_movies
FROM movies
GROUP BY genre;

-- Average rating by director
SELECT director, AVG(imdb_rating) AS avg_rating
FROM movies
GROUP BY director
ORDER BY avg_rating DESC;
