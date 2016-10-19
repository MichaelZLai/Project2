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

fran = Workout.create(name:"Fran", wod:"Three rounds, 21-15- and 9 reps, for time of:\r\nThruster (95/65lbs)\r\nPull-ups", workout_date: "2016-10-10")
monday = Workout.create(name:"Monday", wod:"10 rounds for time of:\r\n95-lb. sumo deadlift high pulls, 7 reps\r\n95-lb. front squats, 7 reps\r\n95-lb. push jerks, 7 reps", workout_date: "2016-10-17")
tuesday = Workout.create(name:"Tuesday", wod:"Complete as many rounds and reps as possible in 10 minutes of:\r\n30 double-unders\r\n75-lb. power snatches, 15 reps", workout_date: "2016-10-18")
friday = Workout.create(name:"Friday", wod:"Complete as many rounds as possible in 20 minutes of:\r\n5 clean and jerks\r\n10 toes-to-bars\r\nRest 30 seconds\r\n\r\nMen use 185 lb. Women use 135 lb.", workout_date: "2016-10-21")

michael = User.create(name:"Michael Lai", email:"mike@mike.com", password: "123123", admin: true)
andy = User.create(name:"Andy Whitley", email:"andy@andy.com", password: "123123", admin: false)
khoi = User.create(name:"Khoi Le", email:"khoi@khoi.com", password: "123123", admin: false)
alex = User.create(name:"Alex Manno", email:"alex@alex.com", password: "123123", admin: false)
poh = User.create(name:"Tiff Klinger", email:"tiff@tiff.com", password: "123123", admin: false)

Athlete.create(age: "26", height: "5'8", weight: "163lbs", gender: "Male", img_url: "https://scontent-iad3-1.xx.fbcdn.net/t31.0-8/12957638_10153642273068790_3530879974443454292_o.jpg", user_id: 1)
Athlete.create(age: "24", height: "5'11", weight: "200lbs", gender: "Male", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-1/p320x320/10350337_10203876141036256_6636373977854547620_n.jpg?oh=f256cd53ee13556ec2c685023d33c73d&oe=5896FA8E", user_id: 2)
Athlete.create(age: "27", height: "5'8", weight: "160lbs", gender: "Male", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/1379359_10152081378993296_1975135105_n.jpg?oh=2bc9e0fb189a7580a554757fef0de621&oe=585FE627", user_id: 3)
Athlete.create(age: "24", height: "5'6", weight: "160lbs", gender: "Male", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/11036256_10153801374557774_1828400685902538218_n.jpg?oh=4769f328cc34e60d5d72eb337d86cb74&oe=58A9F26D", user_id: 4)
Athlete.create(age: "28", height: "5'4", weight: "130lbs", gender: "Female", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/11745810_4676044859029_8614797791336539244_n.jpg?oh=1e8840dcd8940d99692d9f5d4b994ccc&oe=58A03D8A", user_id: 5)

scores1 = Score.create([{workout_time:"7am", workout_score:"2:12", notes: "touche", workout_id: 1, user_id: 1},
  {workout_time:"7am", workout_score:"3:12", notes: "that was hard...", workout_id: 1, user_id: 3},
  {workout_time:"8pm", workout_score:"2:40", notes: "wut wut", workout_id: 1, user_id: 2},
  {workout_time:"5:30pm", workout_score:"3:50", notes: "subbed 60lbs", workout_id: 1, user_id: 4}])

scores2 = Score.create([{workout_time:"7am", workout_score:"9:30", notes: "tough", workout_id: 2, user_id: 3},
  {workout_time:"8am", workout_score:"8:12", notes: "", workout_id: 2, user_id: 2},
  {workout_time:"9am", workout_score:"9:01", notes: "", workout_id: 2, user_id: 1}])

scores3 = Score.create([{workout_time:"10am", workout_score:"160", notes: "not insane", workout_id: 3, user_id: 4},
  {workout_time:"10am", workout_score:"200", notes: "ouch", workout_id: 3, user_id: 2},
  {workout_time:"10am", workout_score:"130", notes: "", workout_id: 3, user_id: 1},
  {workout_time:"10am", workout_score:"140", notes: "no me gusta", workout_id: 3, user_id: 5}])

scores4 = Score.create([{workout_time:"4pm", workout_score:"6rds", notes: "ayy", workout_id: 4, user_id: 5},
  {workout_time:"4pm", workout_score:"9rds", notes: "full class and crushed it", workout_id: 4, user_id: 4},
  {workout_time:"5pm", workout_score:"8rds", notes: "", workout_id: 4, user_id: 3},
  {workout_time:"6pm", workout_score:"7rds", notes: "", workout_id: 4, user_id: 1},
  {workout_time:"6pm", workout_score:"4rds", notes: "getting there", workout_id: 4, user_id: 2}])
