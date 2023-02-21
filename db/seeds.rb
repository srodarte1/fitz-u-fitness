User.destroy_all
Exercise.destroy_all
Routine.destroy_all



puts "Initializing seedlings..."

puts "Creating users..."
u1 = User.create(first_name:"Sarah", last_name:"Nicole", email: "rodarte_sarah@yahoo.com", password:"12345678", gender: "female", age: 31, weight: 112.0, height: 5.1, activity_level: "lightly active",tdee: 1200, water_intake: 3.7)




## Exercises
puts "Creating Exercises..."

e1 = Exercise.create(name:"military press", category:"shoulders", tempo: 2010)
e2 =Exercise.create(name:"pull ups", category:"back", tempo: 2011)
e3 =Exercise.create(name:"dumbbell incline press", category: "chest", tempo: 2010)
e4 =Exercise.create(name:"barbell reverse bent row", category: "back", tempo:2011)
e5 =Exercise.create(name:"dumbbell lateral raise", category: "shoulders", tempo:2011)
e6 =Exercise.create(name: "concentration curl", category:"biceps", tempo: 2010)
e7 =Exercise.create(name: "tricep dips", category: "triceps", tempo: 3010)
e8 =Exercise.create(name: "squat", category:"legs", tempo: 2010)
e9 =Exercise.create(name:"hip thrust (banded)", category:"legs", tempo:2011)
e10 =Exercise.create(name: "leg extension", category:"legs", tempo: 2010)
e11 =Exercise.create(name: "seated leg curl", category:"legs", tempo:3010)
e12 =Exercise.create(name:"hip abduction", category:"legs", tempo: 2010)
e13 =Exercise.create(name: "dumbbell standing calf raise", category:"legs", tempo: 2112)
e14 =Exercise.create(name: "barbell chest press", category: "chest", tempo: 2010)
e15 =Exercise.create(name: "cable seated row", category:"back", tempo:2011)
e16 =Exercise.create(name:"dumbbell shoulder press", category:"shoulders", tempo: 2010)
e17 =Exercise.create(name: "dumbbell pull over", category:"chest", tempo: 3020)
e18 =Exercise.create(name: "pec dec fly", category: "chest", tempo:2011)
e19 =Exercise.create(name: "cable curl", category:"biceps", tempo: 2010)
e20 =Exercise.create(name: "dumbbell overhead tricep extension", category: "triceps", tempo: 2010)
e21 =Exercise.create(name: "sumo deadlift", category:"legs", tempo:2111)
e22 =Exercise.create(name: "bulgarian split squat", category: "legs", tempo:3010)
e23 =Exercise.create(name: "cable pull through", category:"legs", tempo:2011)
e24 =Exercise.create(name: "dumbbell reverse lunge", category: "legs", tempo: 2010)
e25 =Exercise.create(name: "lying leg curl", category:"legs", tempo: 3010)
e26 =Exercise.create(name: "machine seated calf raise", category:"legs", tempo: 2112) 
e27 =Exercise.create(name: "chin - up", category:"back", tempo:2011)
e28 =Exercise.create(name: "dumbbell chest press", category: "chest", tempo: 2010)
e29 =Exercise.create(name: "t-bar row", category:"back", tempo:2011)
e30 =Exercise.create(name:"dumbbell seated bent reverse fly", category: "back", tempo:2011)
e31 =Exercise.create(name: "barbell curl", category: "biceps", tempo: 2010)
e32 =Exercise.create(name: "cable rope over-head tricep extension", category:"triceps", tempo: 2010)
e33 =Exercise.create(name: "reverse hyperextension", category: "legs", tempo:2011)
e34 =Exercise.create(name: "dumbbell lunge", category: "legs", tempo: 2010)
e35 =Exercise.create(name: "b-stance barbell hip thrust", category:"legs", tempo:2011)
e36 =Exercise.create(name: "lying leg curl", category:"legs", tempo: 3010)
e37 =Exercise.create(name: "seated calf raise", category:"legs", tempo:2112)
e38 =Exercise.create(name: "dumbbell single arm row", category: "back", tempo:2011)
e39 =Exercise.create(name: "lat pull down", category:"back", tempo:2011)
e40 =Exercise.create(name: "dumbbell incline fly", category:"chest", tempo:2011)
e41 =Exercise.create(name: "dumbbell preacher curl", category:"biceps", tempo: 2010)
e42 =Exercise.create(name: "cable tricep press down", category:"triceps", tempo: 2010)
e43 =Exercise.create(name: "barbell hip thrust", category:"legs", tempo:2111)
e44 =Exercise.create(name: "bulgarian split squat", category:"legs", tempo: 3010)
e45 =Exercise.create(name: "cable kickbacks", category:"legs", tempo: 2010)
e46 =Exercise.create(name: "cable straight-arm pulldown", category: "back", tempo:2011)
e47 =Exercise.create(name: "cable reverse fly", category:"back", tempo:2011)
e48 =Exercise.create(name: "dumbbell hammer curl", category:"biceps", tempo: 2010)
e49 =Exercise.create(name: "close grip bench press", category:"triceps", tempo: 2010)
e50 =Exercise.create(name: "glute bridge", category: "legs", tempo: 2011)
e51 =Exercise.create(name: "stability ball curl", category:"legs", tempo: 3010)
e52 =Exercise.create(name: "machine seated row", category:"back", tempo:2011)
e53 =Exercise.create(name: "mid-cable fly", category:"chest", tempo:2011)
e54 =Exercise.create(name: "dumbell incline bicep curl", category:"biceps", tempo:2010)
e55 =Exercise.create(name: "leg press", category: "legs", tempo: 3010)
e56 =Exercise.create(name: "dumbbell high step-up", category: "legs", tempo:2011)

puts "Creating Workout Routines..."

Routine.create(name:"heavy chest", rest: 60 , sets: "3 of 12 sets" ,exercise_id: e53.id, user_id: u1.id)
Routine.create(name:"back day", rest: 60 , sets: "3 of 12 sets",exercise_id: e48.id, user_id: u1.id)
Routine.create(name:"leg day", rest: 60 , sets: "3 of 12 sets" ,exercise_id: e48.id, user_id: u1.id)
Routine.create(name:"arms", rest: 60 , sets: "3 of 12 sets" ,exercise_id: e48.id, user_id: u1.id)
Routine.create(name:"shoulder day", rest: 60 , sets: "3 of 12 sets",exercise_id: e48.id, user_id: u1.id)

puts "Finally....we are done seeding!"