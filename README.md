This project focuses on analyzing a dataset of songs using SQL. The dataset contains various features like genre, energy, danceability, and more, which are explored to derive meaningful insights about trends in music releases, song attributes, and popular genres.

Features Implemented
1. Genre-Based Analysis
Average Danceability and Energy: Calculated the average danceability and energy for each genre.
Most Popular Genre: Identified the most popular genres based on aggregated song popularity.
Top Genres by Valence (Happiness): Ranked genres by their average valence score to see which genres are associated with the most upbeat songs.
2. Yearly Trends
Song Releases by Year: Analyzed how many songs were released each year.
Average Duration by Year: Calculated the average duration of songs released over different years.
Popular Years: Determined which years saw the highest average popularity of songs.
3. Song Attribute Exploration
High-Energy and Danceable Songs: Queried songs with high energy (>0.8) and high danceability (>0.7).
Top 5 Longest Songs: Identified the longest songs in the dataset.
Loudest Songs: Queried the top 5 loudest songs by loudness levels.
Songs with Instrumentalness: Filtered songs where instrumentalness is greater than 0.5.
4. Explicit Songs
Percentage of Explicit Songs: Calculated the percentage of explicit songs in the dataset.
Explicit Songs by Year: Queried the total number of explicit songs released by year.
5. Artist Insights
Artists with Most Songs: Identified the artists with the highest number of songs in the dataset.
6. Correlations
Danceability and Popularity: Investigated the correlation between a song's danceability and its popularity.
Technologies Used
SQL: Used for querying and analyzing the data.
MySQL: Designed and managed the database containing song data.
GitHub: Employed for version control and collaboration.
Python: Utilized to automate data loading and preprocessing tasks.
Project Setup
Clone the Repository:

bash
Copy code
git clone https://github.com/yourusername/music-data-analysis.git
cd music-data-analysis
Database Setup:

Install MySQL on your system.
Import the songs dataset into the MySQL database:
sql
Copy code
CREATE DATABASE spotify;
USE spotify;
-- Import your CSV data here
Run SQL Queries:

Open your MySQL client and run the provided SQL scripts to generate the insights listed above.
Dataset
The dataset includes the following features:

song: Title of the song.
artist: Name of the artist.
duration_ms: Duration of the song in milliseconds.
explicit: Whether the song is explicit (True/False).
year: Year the song was released.
popularity: Popularity score of the song.
danceability, energy, loudness, valence, tempo: Various audio features of the song.
genre: Genre of the song.
Project Highlights
Aggregated song data to compute average danceability and energy across different genres.
Analyzed trends in music releases by year and identified the most popular genres.
Correlated song attributes like danceability with popularity and valence (happiness) for genre-level insights.
Filtered songs based on instrumentalness, loudness, and tempo to uncover hidden patterns in the data.
