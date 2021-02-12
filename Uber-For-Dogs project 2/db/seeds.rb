aaron = User.create(username: "muesinga", name: "Aaron Muesing",)

ally = DogWalker.create(username: "allyclare", name: "Allyson Clare", location: "North Bergen, NJ", age: 36)

app1 = Appointment.create(user_id: aaron.id, dog_walker_id: ally.id, date: "02.14.2021")



# # THIS SEED FILE NEEDS TO BE ENTIRELY REPLACED -- I'M LEAVING CODE FOR YOUR REFERENCE ONLY!

# User.destroy_all
# Dog_Walker.destroy_all
# Appointment.destroy_all
# User.reset_pk_sequence
# Dog_Walker.reset_pk_sequence
# Appointment.reset_pk_sequence

########### different ways to write your seeds ############

# 1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)


# # 2. Mass create -- in order to connect them later IN SEEDS (not through the app) you'll need to find their id
# ## a. by passing an array of hashes:
# User.create([
#     {name: "Corn Tree", bought: 20170203, color: "green"},
#     {name: "Prayer User", bought: 20190815, color: "purple"},
#     {name: "Cactus", bought: 20200110, color: "ugly green"}
# ])
# ## b. by interating over an array of hashes:
# Users = [{name: "Elephant bush", bought: 20180908, color: "green"},
#     {name: "Photos", bought: 20170910, color: "green"},
#     {name: "Dragon tree", bought: 20170910, color: "green"},
#     {name: "Snake User", bought: 20170910, color: "dark green"},
#     {name: "polka dot User", bought: 20170915, color: "pink and green"},
#     {name: "Cactus", bought: 20200517, color: "green"}]

# Users.each{|hash| User.create(hash)}

# # 3. Use Faker and mass create
# ## step 1: write a method that creates a DogWalker
# def create_DogWalker
#     free = ["mornings", "evenings", "always", "afternoons", "weekends", "none"].sample

#     DogWalker = DogWalker.create(
#         name: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
#         free_time: free,
#         age: rand(11...70)
#     )
# end

# ## step 2: write a method that creates a joiner
# def create_joiners(DogWalker)
#     Users_number = rand(1..4)
#     Users_number.times do 
#         Appointment.create(
#             User_id: User.all.sample.id, 
#             DogWalker_id: DogWalker.id, 
#             affection: rand(101), 
#             favorite?: [true, false].sample
#         )
#     end
# end

# ## step 3: invoke creating joiners by passing in an instance of a DogWalker
# 10.times do     
#     create_joiners(create_DogWalker)
#     ##### ALTERNATIVE:
#     # DogWalker = create_DogWalker
#     # create_joiners(DogWalker)
# end

# indoor = Category.create(name: "indoors")

# User.update(category_id: indoor.id)

 puts "🔥 🔥 🔥 🔥 "