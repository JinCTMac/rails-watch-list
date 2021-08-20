# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database..."

Movie.destroy_all

puts "Database cleaned"

puts "Create Movies"
Movie.create(
  title: "Wonder Woman 1984",
  overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
  poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
  rating: 6.9)
puts "Wonder Woman 1984 was added"

Movie.create(title: "The Shawshank Redemption",
  overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison",
  poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
  rating: 8.7)
puts "The Shawshank Redemption was added"

Movie.create(title: "Titanic",
  overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.",
  poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  rating: 7.9)
puts "Titanic was added"

Movie.create(title: "Ocean's Eight",
  overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
  poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg",
  rating: 7.0)
puts "Ocean's Eight was added"

Movie.create(title: "Pulp Fiction",
  overview: "A burger-loving hit man, his philosophical partner, a drug-addled gangster's moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.",
  poster_url: "https://image.tmdb.org/t/p/original/x1QZHSq9AzreIVbsp8VgYemAjV0.jpg",
  rating: 8.5)
puts "Pulp Fictio was added"

Movie.create(title: "Hamilton",
  overview: "Presenting the tale of American founding father Alexander Hamilton, this filmed version of the original Broadway smash hit is the story of America then, told by America now.",
  poster_url: "https://image.tmdb.org/t/p/original/h1B7tW0t399VDjAcWJh8m87469b.jpg",
  rating: 8.5)
puts "Hamilton was added"

Movie.create(title: "Terminator 2",
  overview: "A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her ten year old son, John Connor, from a more advanced and powerful cyborg.",
  poster_url: "https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_FMjpg_UX1000_.jpg",
  rating: 8.5)
puts "Terminator 2 was added"

Movie.create(title: "Black Beauty",
  overview: "Born free in the American West, Black Beauty is a horse rounded up and brought to Birtwick Stables, where she meets spirited teenager Jo Green. The two forge a bond that carries Beauty through the different chapters, challenges and adventures.",
  poster_url: "https://image.tmdb.org/t/p/original/5ZjMNJJabwBEnGVQoR2yoMEL9um.jpg",
  rating: 8.6)
puts "Black Beauty was added"

puts "#{Movie.count} Movies created"
