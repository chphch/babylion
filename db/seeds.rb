# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 User.update(1, name: '조인성', email: 'ta@ta.com', password: '12341234', is_ta: true)
 User.update(2, name: '하정우', email: 'student93@student.com', password: '12341234', is_ta: false)