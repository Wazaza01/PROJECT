--------- Query for most user Gender with the highest_session  ----------------

SELECT user_gender, max(no_items_in_session) AS highest_session
FROM events
GROUP BY user_gender
ORDER BY user_gender asc;


------------ Query to Determine number of user  who song level are paid or free  ---------------

SELECT song_level, count(*) AS count
FROM events
GROUP BY song_level;


--------- Query to check the number of user who logged in and logged out ------------

 SELECT user_authontication, count(*) AS login_count
 FROM events
 WHERE user_authontication = 'logged in' OR user_authontication = 'logged out'
 GROUP BY user_authontication;
 
 
 --------------- Query to determne location with the most songs played --------------------
 
 SELECT user_location, count(song_played) AS songs_played_count
 FROM events
 GROUP BY user_location
 ORDER BY songs_played_count desc
 LIMIT 1;
 
 
 ------------- The top 10 most user agent with their name and user id ------------
 
 SELECT user_id, user_first_name, user_last_name, count(user_agent) AS user_count
 FROM events 
 GROUP BY user_id, user_first_name, user_last_name
 ORDER BY user_count desc
 LIMIT 10;
 
 ------------- Top 5 most played songs --------------
 
 SELECT song_played, count(*) AS most_played
 FROM events
 GROUP BY song_played
 ORDER BY most_played desc
 LIMIT 5;
 
 ------------ Artist with the most title songs -----------------
 
SELECT artist_name, count(title) AS most_songs_by_artist
FROM songs
GROUP BY artist_name, title
ORDER BY most_songs_by_artist desc;


----------------- 

 
 
 
 
 
 
 
 

