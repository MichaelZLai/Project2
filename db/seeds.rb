# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Score.destroy_all
Score.destroy_all

fran = Workout.create(name:"Fran", wod:"Three rounds, 21-15- and 9 reps, for time of:\r\nThruster (95/65lbs)\r\nPull-ups", workout_date: "2016-10-10")
monday = Workout.create(name:"Monday", wod:"10 rounds for time of:\r\n95-lb. sumo deadlift high pulls, 7 reps\r\n95-lb. front squats, 7 reps\r\n95-lb. push jerks, 7 reps", workout_date: "2016-10-17")
tuesday = Workout.create(name:"Tuesday", wod:"Complete as many rounds and reps as possible in 10 minutes of:\r\n30 double-unders\r\n75-lb. power snatches, 15 reps", workout_date: "2016-10-18")
friday = Workout.create(name:"Friday", wod:"Complete as many rounds as possible in 20 minutes of:\r\n5 clean and jerks\r\n10 toes-to-bars\r\nRest 30 seconds\r\n\r\nMen use 185 lb. Women use 135 lb.", workout_date: "2016-10-21")


scores1 = Score.create([{workout_time:"7am", workout_score:"2:12", notes: "touche", workout_id: 1},
  {workout_time:"7am", workout_score:"3:12", notes: "that was hard...", workout_id: 1},
  {workout_time:"8pm", workout_score:"2:40", notes: "wut wut", workout_id: 1},
  {workout_time:"5:30pm", workout_score:"3:50", notes: "subbed 60lbs", workout_id: 1}])

scores2 = Score.create([{workout_time:"7am", workout_score:"9:30", notes: "tough", workout_id: 2},
  {workout_time:"8am", workout_score:"8:12", notes: "", workout_id: 2},
  {workout_time:"9am", workout_score:"9:01", notes: "", workout_id: 2}])

scores3 = Score.create([{workout_time:"10am", workout_score:"160", notes: "not insane", workout_id: 3},
  {workout_time:"10am", workout_score:"200", notes: "ouch", workout_id: 3},
  {workout_time:"10am", workout_score:"130", notes: "", workout_id: 3},
  {workout_time:"10am", workout_score:"140", notes: "no me gusta", workout_id: 3}])

scores4 = Score.create([{workout_time:"4pm", workout_score:"6rds", notes: "ayy", workout_id: 4},
  {workout_time:"4pm", workout_score:"9rds", notes: "full class and crushed it", workout_id: 4},
  {workout_time:"5pm", workout_score:"8rds", notes: "", workout_id: 4},
  {workout_time:"5pm", workout_score:"8rds", notes: "well...", workout_id: 4},
  {workout_time:"6pm", workout_score:"6rds", notes: "", workout_id: 4},
  {workout_time:"6pm", workout_score:"7rds", notes: "", workout_id: 4},
  {workout_time:"6pm", workout_score:"4rds", notes: "getting there", workout_id: 4}])
