# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

g = Group.create( name: 'Blossom\'s Birthday')

jc = g.members.create( first_name: 'Jon', last_name: 'Conley', email: 'conley.jj@gmail.com', password: 'abcd1234')
jw = g.members.create( first_name: 'Josh', last_name: 'Wertheimer', email: 'jw@nowhere.com', password: 'abcd1234')
js = g.members.create( first_name: 'Joe', last_name: 'Spada', email: 'js@nowhere.com', password: 'abcd1234')
jl = g.members.create( first_name: 'Jesse', last_name: 'Lubin', email: 'jl@nowhere.com', password: 'abcd1234')
g.members.create( first_name: 'Luke', last_name: 'Getto', email: 'lg@nowhere.com', password: 'abcd1234')

g.expenses.create(user: jc, amount: 34.12, name: 'Potatoes')
g.expenses.create(user: jc, amount: 12.45, name: 'Ice Cream')
g.expenses.create(user: jc, amount: 50, name: 'Coors O')
g.expenses.create(user: jw, amount: 475, name: 'Strippers')
g.expenses.create(user: jw, amount: 0.50, name: 'Gumball')
g.expenses.create(user: js, amount: 17.86, name: 'Toilet Paper and Bird Seed')
g.expenses.create(user: jl, amount: 27.85, name: 'Bait')