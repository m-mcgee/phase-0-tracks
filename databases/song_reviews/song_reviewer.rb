require 'sqlite3'

# Build database for song reviews 
# Create tables for reviews, users, songs, albums, and Bands
review_database = SQLite3::Database.new("rev_db.db")

sql_command = <<-SQL
	CREATE TABLE IF NOT EXISTS users(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		email VARCHAR(255)
	)
SQL

review_database.execute(sql_command) 

sql_command = <<-SQL
	CREATE TABLE IF NOT EXISTS bands(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255)
	)
SQL

review_database.execute(sql_command)

sql_command = <<-SQL
	CREATE TABLE IF NOT EXISTS albums(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		band_id INT,
		release_year INT
	)
SQL

review_database.execute(sql_command)

sql_command = <<-SQL
	CREATE TABLE IF NOT EXISTS songs(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		album_id INT
	)
SQL

review_database.execute(sql_command)

sql_command = <<-SQL
	CREATE TABLE IF NOT EXISTS reviews(
		id INTEGER PRIMARY KEY,
		rating INT, 
		user_id INT, 
		song_id INT
	)
SQL

review_database.execute(sql_command)


# Show valid users in the database to choose from
puts "Enter your user id from the list: "
users_list = review_database.execute("SELECT * FROM users")
users_list.each do |user|
	puts user[0].to_s + " = " + user[1]
end
user_entry = gets.chomp.to_i



# Pick which song from the database the user wants to review
puts "Which song would you like to review?"
song_list = review_database.execute("SELECT * FROM songs")
song_list.each do |song|
	puts song[0].to_s + " = " + song[1]
end
song_choice = gets.chomp.to_i


# Ask the user to rate the song and INSERT into the reviews table
puts "How many stars would you rate this song (1-5)? 1 = Crap : 5 = GREAT"
num_stars = gets.chomp.to_i

review_database.execute("
	INSERT INTO reviews
	  (rating, user_id, song_id) 
	  VALUES (?, ?, ?)", 
	  [num_stars, user_entry, song_choice])



# Collect all data related to the new review
# Print review information 
new_review = review_database.execute("
	SELECT users.name, songs.name, bands.name, reviews.rating 
	FROM reviews 
	JOIN songs ON songs.id = reviews.song_id 
	JOIN users on users.id = reviews.user_id 
	JOIN albums ON albums.id = songs.album_id 
	JOIN bands on bands.id = albums.band_id 
	WHERE users.id = ? and song_id = ?", [user_entry, song_choice]
	)
row = new_review[0]

puts
puts "Thanks for rating #{row[1]} by #{row[2]} with #{row[3]} stars, #{row[0]}!"

average_rating = review_database.execute("
	SELECT COUNT(song_id), AVG(reviews.rating)
	FROM reviews
	WHERE reviews.song_id = #{song_choice};
	")

average_array = average_rating[0]
puts "The song #{row[1]} by #{row[2]} has #{average_array[0]} reviews with an average of #{average_array[1].round(2)} stars!"




# Driver code
# sql_command = <<-SQL
# 	INSERT INTO users (name, email) VALUES ("Joe", "joe@joeiscool.com");
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO users (name, email) VALUES ("Tim", "tim@timiscool.com");
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO bands (name) VALUES ("Van Halen");
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO bands (name) VALUES ("Blink 182");
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO bands (name) VALUES ("The Beatles");
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO albums (name, release_year, band_id) VALUES ("1984", 1984, 1);
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO albums (name, release_year, band_id) VALUES ("Enema of the State", 1999, 2);
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO albums (name, release_year, band_id) VALUES ("Abbey Road", 1969, 3);
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO songs (name, album_id) VALUES ("Jump", 1);
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO songs (name, album_id) VALUES ("Running with the Devil", 1);
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO songs (name, album_id) VALUES ("What's my age Again", 2);
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO songs (name, album_id) VALUES ("Dumpweed", 2);
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO songs (name, album_id) VALUES ("Come together", 3);
# SQL

# review_database.execute(sql_command)

# sql_command = <<-SQL
# 	INSERT INTO songs (name, album_id) VALUES ("Here comes the sun", 3);
# SQL

# review_database.execute(sql_command)
