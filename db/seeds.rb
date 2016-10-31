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

# NHO: I think you need to actually pass the tablename to this method to clear the ids..
ActiveRecord::Base.connection.reset_pk_sequence!('TABLENAME')

#  NHO: great seeds!
fran = Workout.create(name:"Fran", wod:"Three rounds, 21-15- and 9 reps, for time of:\r\nThruster (95/65lbs)\r\nPull-ups", workout_date: "2016-10-10")
monday = Workout.create(name:"Monday", wod:"10 rounds for time of:\r\n95-lb. sumo deadlift high pulls, 7 reps\r\n95-lb. front squats, 7 reps\r\n95-lb. push jerks, 7 reps", workout_date: "2016-10-17")
tuesday = Workout.create(name:"Tuesday", wod:"Complete as many rounds and reps as possible in 10 minutes of:\r\n30 double-unders\r\n75-lb. power snatches, 15 reps", workout_date: "2016-10-18")
friday = Workout.create(name:"Friday", wod:"Complete as many rounds as possible in 20 minutes of:\r\n5 clean and jerks\r\n10 toes-to-bars\r\nRest 30 seconds\r\n\r\nMen use 185 lb. Women use 135 lb.", workout_date: "2016-10-21")

michael = User.create(name:"Michael Lai", email:"mike@mike.com", password: "123123", admin: true)
andy = User.create(name:"Andy Whitley", email:"andy@andy.com", password: "123123", admin: false)
khoi = User.create(name:"Khoi Le", email:"khoi@khoi.com", password: "123123", admin: false)
alex = User.create(name:"Alex Manno", email:"alex@alex.com", password: "123123", admin: false)
tiff = User.create(name:"Tiff Klinger", email:"tiff@tiff.com", password: "123123", admin: false)
mara = User.create(name:"Mara", email:"mara@mara.com", password: "123123", admin: false)
geoff = User.create(name:"Geoff Hansen", email:"geoff@geoff.com", password: "123123", admin: false)
shelby = User.create(name:"Shelby Corbella", email:"shelby@shelby.com", password: "123123", admin: false)

Athlete.create(age: "26", height: "5'8", weight: "163lbs", gender: "Male", clean_jerk: "130kg", snatch: "102kg", deadlift: "200kg", back_squat: "182kg", bench: "140kg", img_url: "https://scontent-iad3-1.xx.fbcdn.net/t31.0-8/12957638_10153642273068790_3530879974443454292_o.jpg", user: michael)
Athlete.create(age: "24", height: "5'11", weight: "200lbs", gender: "Male", clean_jerk: "180lb", snatch: "140lb", deadlift: "225lb", back_squat: "225lb", bench: "225lb", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-1/p320x320/10350337_10203876141036256_6636373977854547620_n.jpg?oh=f256cd53ee13556ec2c685023d33c73d&oe=5896FA8E", user: andy)
Athlete.create(age: "27", height: "5'8", weight: "160lbs", gender: "Male", clean_jerk: "160lb", snatch: "130lb", deadlift: "225lb", back_squat: "180lb", bench: "225lb", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/1379359_10152081378993296_1975135105_n.jpg?oh=2bc9e0fb189a7580a554757fef0de621&oe=585FE627", user: khoi)
Athlete.create(age: "24", height: "5'6", weight: "160lbs", gender: "Male", clean_jerk: "130lb", snatch: "80lb", deadlift: "150lb", back_squat: "160lb", bench: "225lb", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/11036256_10153801374557774_1828400685902538218_n.jpg?oh=4769f328cc34e60d5d72eb337d86cb74&oe=58A9F26D", user: alex)
Athlete.create(age: "28", height: "5'4", weight: "130lbs", gender: "Female", clean_jerk: "80lb", snatch: "40lb", deadlift: "100lb", back_squat: "80lb", bench: "225lb", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/11745810_4676044859029_8614797791336539244_n.jpg?oh=1e8840dcd8940d99692d9f5d4b994ccc&oe=58A03D8A", user: tiff)
Athlete.create(age: "38", height: "6'2", weight: "130lbs", gender: "Female", clean_jerk: "80lb", snatch: "240lb", deadlift: "100lb", back_squat: "80lb", bench: "225lb", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/10381_10205451233945195_8759249694101005041_n.jpg?oh=5760e588ce6c1fc7f3aae2e35ee560a3&oe=589EB9A9", user: mara)
Athlete.create(age: "48", height: "5'4", weight: "210lbs", gender: "Male", clean_jerk: "180lb", snatch: "40lb", deadlift: "150lb", back_squat: "180lb", bench: "225lb", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/13495206_10206504851165651_6062482597120669105_n.jpg?oh=c09dac929964b1262a15dd63b42e686a&oe=58A4A4AB", user: geoff)
Athlete.create(age: "58", height: "5'4", weight: "120lbs", gender: "Female", clean_jerk: "80lb", snatch: "40lb", deadlift: "100lb", back_squat: "80lb", bench: "225lb", img_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/13626465_10208356974056538_29251810168230567_n.jpg?oh=66566aed8b72285bb74f06312d66b6c6&oe=58914211", user: shelby)


scores1 = Score.create([{workout_time:"7am", workout_score:"2:12", notes: "touche", workout: fran, user: michael},
  {workout_time:"7am", workout_score:"3:12", notes: "that was hard...", workout: fran, user: khoi},
  {workout_time:"8pm", workout_score:"2:30", notes: "wut wut", workout: fran, user: andy},
  {workout_time:"10pm", workout_score:"3:40", notes: "Hard AF", workout: fran, user: shelby},
  {workout_time:"8pm", workout_score:"2:40", notes: "...", workout: fran, user: geoff},
  {workout_time:"4pm", workout_score:"5:50", notes: "why....", workout: fran, user: tiff},
  {workout_time:"5:30pm", workout_score:"2:40", notes: "", workout: fran, user: mara},
  {workout_time:"5:30pm", workout_score:"3:50", notes: "subbed 60lbs", workout: fran, user: alex}])

scores2 = Score.create([{workout_time:"7am", workout_score:"9:30", notes: "tough", workout: monday, user: shelby},
  {workout_time:"8am", workout_score:"8:12", notes: "", workout: monday, user: michael},
  {workout_time:"9pm", workout_score:"7:40", notes: "wut wut", workout: monday, user: geoff},
  {workout_time:"9pm", workout_score:"8:10", notes: "wut wut", workout: monday, user: tiff},
  {workout_time:"9am", workout_score:"9:01", notes: "", workout: monday, user: mara}])
#
scores3 = Score.create([{workout_time:"10am", workout_score:"160", notes: "not insane", workout: tuesday, user: michael},
  {workout_time:"10am", workout_score:"200", notes: "ouch", workout: tuesday, user: alex},
  {workout_time:"10am", workout_score:"130", notes: "", workout: tuesday, user: andy},
  {workout_time:"8pm", workout_score:"150", notes: "", workout: tuesday, user: geoff},
  {workout_time:"8pm", workout_score:"310", notes: "never again", workout: tuesday, user: shelby},
  {workout_time:"10am", workout_score:"140", notes: "no me gusta", workout: tuesday, user: mara}])
#
scores4 = Score.create([{workout_time:"4pm", workout_score:"6rds", notes: "ayy", workout: friday, user: andy},
  {workout_time:"4pm", workout_score:"9rds", notes: "full class and crushed it", workout: friday, user: alex},
  {workout_time:"5pm", workout_score:"8rds", notes: "", workout: friday, user: khoi},
  {workout_time:"6pm", workout_score:"7rds", notes: "", workout: friday, user: michael},
  {workout_time:"8pm", workout_score:"8rds", notes: "", workout: friday, user: tiff},
  {workout_time:"8pm", workout_score:"7rds", notes: "strong game here", workout: friday, user: shelby},
  {workout_time:"6pm", workout_score:"4rds", notes: "getting there", workout: friday, user: mara}])
