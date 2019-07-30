# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create!(name: "joe", username: "joe", password: "1234", email: "joe@gmail.com", description: "artist description")
Artist.create!(name: "alexa", username: "alexa", password: "1234", email: "alexa@gmail.com", description: "artist description")
Artist.create!(name: "kenny", username: "kenny", password: "1234", email: "kenny@gmail.com", description: "artist description")
Artist.create!(name: "mikhail", username: "mikhail", password: "1234", email: "mikhail@gmail.com", description: "artist description")

Location.create!(name: "Ginger Hill, Jamaica", description: "location description")
Location.create!(name: "YS Falls, Jamaica", description: "St. Elizabeth Parish")
Location.create!(name: "Negril, Jamaica", description: "location description")
Location.create!(name: "Brooklyn, NY", description: "location description")
Location.create!(name: "Syracuse, NY", description: "location description")
Location.create!(name: "New York, NY", description: "location description")

FieldRecording.create!(title: "birds", "artist_id": 1, "location_id": 1, "date": "01/02/1990", "description": "it's birds")
FieldRecording.create!(title: "cats", "artist_id": 1, "location_id": 2, "date": "01/02/1990", "description": "it's cats")
FieldRecording.create!(title: "dogs", "artist_id": 1, "location_id": 3, "date": "01/02/1990", "description": "it's dogs")
FieldRecording.create!(title: "locusts", "artist_id": 2, "location_id": 4, "date": "01/02/1990", "description": "it's locusts")
FieldRecording.create!(title: "pigs", "artist_id": 2, "location_id": 5, "date": "01/02/1990", "description": "it's pigs")
FieldRecording.create!(title: "insects", "artist_id": 3, "location_id": 6, "date": "01/02/1990", "description": "it's insects")
FieldRecording.create!(title: "snakes", "artist_id": 3, "location_id": 1, "date": "01/02/1990", "description": "it's snakes")
FieldRecording.create!(title: "lions", "artist_id": 3, "location_id": 2, "date": "01/02/1990", "description": "it's lions")
FieldRecording.create!(title: "penguins", "artist_id": 4, "location_id": 3, "date": "01/02/1990", "description": "it's penguins")
