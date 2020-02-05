# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
logic = Artist.create(name: "Logic")
logic.songs.build(title: "Under Pressure").save
logic.songs.build(title: "City Of Stars").save

mac = Artist.create(name: "Mac Miller")
mac.songs.build(title: "Woods").save
mac.songs.build(title: "Circles").save