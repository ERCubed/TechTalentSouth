# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(:name => 'Eric Roberts', :username => 'ercubed', :email => 'eric@ercubed.com', :password => 'password', :password_confirmation => 'password')
u2 = User.create!(:name => 'Vestan Pance', :username => 'vpance', :email => 'vpance@yopmail.com', :password => 'password', :password_confirmation => 'password')
u3 = User.create!(:name => 'Holly Golightly', :username => 'TiffanysGirl', :email => 'holly@yopmail.com', :password => 'password', :password_confirmation => 'password')

