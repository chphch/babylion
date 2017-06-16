# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 User.create name: '조인성', email: 'ta@ta.com', password: '12341234', is_ta: true
 User.create name: '하정우', email: 'student93@student.com', password: '12341234', is_ta: false
 User.create name: '구자운', email: 'a@a.com', password: '12341234', is_ta: false, seat_number:2
 User.create name: '김은수', email: 'b@b.com', password: '12341234', is_ta: false, seat_number:3, emergency_help:true
 User.create name: '이윤성', email: 'c@c.com', password: '12341234', is_ta: false, seat_number:2, emergency_help:true
 User.create name: '정현우', email: 'd@d.com', password: '12341234', is_ta: false 
 User.create name: '조정원', email: 'e@e.com', password: '12341234', is_ta: false