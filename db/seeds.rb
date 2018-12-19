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
 Company.create!(name: "Elemental #{i+1}", email:"elemental#{i+1}@gmail.com", password: '123456', password_confirmation: '123456', category: architects)
end

3.times do |i|
 Company.create!(name: "Rene Lagos #{i+1}", email:"renelagos#{i+1}@gmail.com", password: '123456', password_confirmation: '123456', category: engineers)
end

3.times do |i|
 Company.create!(name: "Constructora #{i+1}", email:"constructora#{i+1}@gmail.com", password: '123456', password_confirmation: '123456', category: builders)
end

## Recompanies
3.times do |i|
 Recompany.create!(name: "Inmobilia #{i+1}", email:"inmobilia#{i+1}@gmail.com", password: '123456', password_confirmation: '123456')
end

Recompany.create!(name: "Inmobiliaria Remote", email:"remote@gmail.com", password: '123456', password_confirmation: '123456', remote_logo_url: 'https://www.curiosfera.com/wp-content/uploads/2017/12/d%C3%B3nde-viven-las-ovejas.jpg' )
