# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### Categories

architects = Category.create(name: 'Arquitectos')
engineers = Category.create(name: 'Ingenieros')
builders = Category.create(name: 'Constructoras')



### Companies
3.times do |i|
  Company.create!(name: "Elemental #{i+1}", email:"elemental#{i+1}@gmail.com", password: 'topsecret', password_confirmation: 'topsecret', category: architects)
end

3.times do |i|
  Company.create!(name: "Rene Lagos #{i+1}", email:"renelagos#{i+1}@gmail.com", password: 'topsecret', password_confirmation: 'topsecret', category: engineers)
end

3.times do |i|
  Company.create!(name: "Constructora #{i+1}", email:"constructora#{i+1}@gmail.com", password: 'topsecret', password_confirmation: 'topsecret', category: builders)
end

### Recompanies
3.times do |i|
  Recompany.create!(name: "Inmobilia #{i+1}", email:"inmobilia#{i+1}@gmail.com", password: 'topsecret', password_confirmation: 'topsecret'0)
end