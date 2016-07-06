# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating three projects"

projectA = Project.create(name: "Ironhack", description: "Coding Bootcamp")
projectB = Project.create(name: "SuperCorn", description: "Genetically modified organic")
projectC = Project.create(name: "Godzilla", description: "Building the strongest creature")
projectD = Project.create(name: "Magical", description: "Playing with magic stones")
projectE = Project.create(name: "Canola", description: "Steroid like vegetable oil")
projectF = Project.create(name: "Psycholiloquay", description: "Highly evil method of butchering english words")
projectG = Project.create(name: "Hobbyist", description: "Chronically exploiting household pets for tasks")
projectH = Project.create(name: "Mach3", description: "The fastest way to gain weight")

puts "done"