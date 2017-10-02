# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Until a better way comes to my mind, families will be created manually
families = ["Bárbara & Juanmi", "Agata & João", "Gloria & Jose", "Vero & Andres"]
families.each do |family|
  Family.create(description: family) if Family.where(description: family).blank?
end
