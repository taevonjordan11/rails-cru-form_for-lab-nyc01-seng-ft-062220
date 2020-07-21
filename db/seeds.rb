# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

Artist.create(name: "David", bio: "i like making music.")
Artist.create(name: "John", bio: "i make song.")
Artist.create(name: "eric", bio: "song is good.")

Genre.create(name: "Hip-Hop")
Genre.create(name: "R&B")
Genre.create(name: "Soul")

20.times do
  Song.create(name: "I made this song", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
end
