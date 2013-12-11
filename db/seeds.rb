# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Group.create(:name => "Python developers")
Group.create(:name => "PHP developers")
Group.create(:name => "Ruby developers")
Group.create(:name => "C# developers")

3.times do |i|
 user = User.new
 user.email = "test#{i}@wp.pl"
 user.password = "qwerty12"
 user.password_confirmation = "qwerty12"
 user.save
end
