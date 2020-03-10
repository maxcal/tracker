# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

person = Person.find_or_create_by!(name: 'John Doe')
person.years.find_or_create_by!(year: 2018).locations.create!([
  { name: "Greenwich Obsvatory, UK", latitude: 51.476852, longitude: -0.000500 },
  { name: "Taj Mahal", latitude: 27.171165982,  longitude: 78.038666512 }
])
