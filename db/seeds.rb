# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'CSV'

Spirit.destroy_all
Distillery.destroy_all

CSV.foreach(Rails.root.join("lib/assets/DistillingNC_distilleries_seed.csv"), headers: true) do |row|
  Distillery.create({
    name: row[0],
    street_address: row[1],
    city: row[2],
    zip: row[3],
    region_id: row[4],
    tours: row[5],
    tour_cost: row[6],
    website: row[7]
  })
end
