# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Wow Daniel, you are good!"

projectA = Project.create(name: "Ironhack", description: "Coding Bootcamp")
projectB = Project.create(name: "SuperCorn", description: "Genetically modified organic")
projectC = Project.create(name: "Godzilla", description: "Building the strongest creature")
projectD = Project.create(name: "Magical", description: "Playing with magic stones")
projectE = Project.create(name: "Canola", description: "Steroid like vegetable oil")
projectF = Project.create(name: "Psycholiloquay", description: "Highly evil method of butchering english words")
projectG = Project.create(name: "Hobbyist", description: "Chronically exploiting household pets for tasks")
projectH = Project.create(name: "Mach3", description: "The fastest way to gain weight")

puts "Task completed, Boss."

TimeEntry.create(hours: 1, minutes: 10, comments: "Saying Hello", date: Time.now, project_id: projectA.id)
TimeEntry.create(hours: 2, minutes: 25, comments: "Saying Goodbye", date: Time.now - 1.day, project_id: projectB.id)
TimeEntry.create(hours: 1, minutes: 30, comments: "Saying Hold on", date: Time.now - 2.days, project_id: projectC.id)
TimeEntry.create(hours: 3, minutes: 15, comments: "Saying dont cry", date: Time.now - 2.months, project_id: projectD.id)
TimeEntry.create(hours: 2, minutes: 25, comments: "Break time", date: Time.now - 3.months, project_id: projectE.id)
TimeEntry.create(hours: 3, minutes: 15, comments: "Saving Private Ryan", date: 3.days(ago), project_id: projectF.id)
TimeEntry.create(hours: 2, minutes: 15, comments: "Forgot where I am", date: Time.now + 3.months, project_id: projectG.id)
TimeEntry.create(hours: 3, minutes: 10, comments: "No longer ensnared", date: Time.now + 2.months, project_id: projectH.id)


