# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Workout.destroy_all
Score.destroy_all
User.destroy_all
Athlete.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('TABLENAME')

monday = Workout.create(name:"Monday", wod:"24 minute cap (24/16)\r\n50 KB Swings\r\nStarbucks Run\r\n40 KB Swings\r\nStarbucks Run\r\n30 KB Swings\r\nStarbucks Run\r\n20 KB Swings\r\nStarbucks Run\r\n10 KB Swings\r\nStarbucks Run\r\n-Then-\r\n50 PushUps\r\n40 Hollow Rocks\r\n30 PushUps\r\n20 Sit Ups\r\n10 Burpees", workout_date: "2016-11-7")

michael = User.create(name:"Michael Lai", email:"mike@mike.com", password: "123123", admin: true)

Athlete.create(age: "26", height: "5'8", weight: "163lbs", gender: "Male", clean_jerk: "130kg", snatch: "102kg", deadlift: "200kg", back_squat: "182kg", bench: "140kg", img_url: "https://scontent-iad3-1.xx.fbcdn.net/t31.0-8/12957638_10153642273068790_3530879974443454292_o.jpg", user: michael)
