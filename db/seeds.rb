# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create([
  { code: "MLA", city: "MANILA" }, 
  { code: "CBA", city: "CEBU" },
  { code: "OCA", city: "ORMOC" }, 
  { code: "TLA", city: "TACLOBAN" },
  { code: "PRA", city: "PARANAQUE" }, 
  { code: "VLA", city: "VALENZUELA" },
  { code: "DNA", city: "DANAO" }, 
  { code: "NGA", city: "NEGROS" }
  ])

today = Date.today
month_from_today = Date.today + 20

(today..month_from_today).each do |date|
  FlightGenerator.call(date)
end
