# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Model.create({ column: data, column: data })

Character.create([
	{ name: "Neo", description: "our protagonist" },
	{ name: "Trinity", description: "the captain" },
	{ name: "Morpheus", description: "the love interest" },
	{ name: "Agent Smith", description: "the antagonist" },
])