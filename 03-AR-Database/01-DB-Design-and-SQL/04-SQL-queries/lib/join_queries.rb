require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT t.name, a.title, b.name
  FROM tracks t
  JOIN albums a ON (t.album_id = a.id)
  JOIN artists b ON (a.artist_id = b.id);")
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  query = db.execute("SELECT COUNT(t.name), ROUND(AVG((t.milliseconds)/60000.0),2)
  FROM tracks t
  JOIN genres g ON (t.genre_id = g.id)
  WHERE g.name = '#{genre_name}';").flatten
  { category: "#{genre_name}", number_of_songs: query[0], avg_length: query[1] }
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 rock artists
  db.execute("SELECT a.name, COUNT(*) as c
    FROM tracks t
    JOIN albums al ON (al.id = t.album_id)
    JOIN artists a ON (a.id = al.artist_id)
    JOIN genres g ON (t.genre_id = g.id)
    WHERE g.name = '#{genre_name}'
    GROUP BY a.name
    ORDER BY c DESC
    LIMIT 5
    ;")
end