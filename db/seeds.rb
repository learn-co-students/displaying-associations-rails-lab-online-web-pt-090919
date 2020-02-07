# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

drake = Artist.create!(name: "Drake")
drake.songs.create!(title: "Hotline Bling")
drake.songs.create!(title: "Girls Need Love")
drake.songs.create!(title: "Passionfruit")