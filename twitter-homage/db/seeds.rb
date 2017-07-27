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

u1t1 = Tweet.create!(:message => "My first tweet.", :user_id => u1.id)
u1t2 = Tweet.create!(:message => "I love tweeting.", :user_id => u1.id)
u1t3 = Tweet.create!(:message => "Ruby is fun to code in.", :user_id => u1.id)
u1t4 = Tweet.create!(:message => "Still tweeting after all these lines of code", :user_id => u1.id)

u2t1 = Tweet.create!(:message => "Wise up sucker!", :user_id => u2.id)
u2t2 = Tweet.create!(:message => "Dance of the Mad", :user_id => u2.id)
u2t3 = Tweet.create!(:message => "nightmare at 20,000 ft.", :user_id => u2.id)

u3t1 = Tweet.create!(:message => "Diamonds are forever", :user_id => u3.id)
u3t2 = Tweet.create!(:message => "Poor Fred", :user_id => u3.id)
u3t3 = Tweet.create!(:message => "Diamonds are a girl's best friend", :user_id => u3.id)
