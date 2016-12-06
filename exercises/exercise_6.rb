require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "David", last_name: "VanDusen", hourly_rate: 600)
@store1.employees.create(first_name: "Don", last_name: "Dundun", hourly_rate: 9000)
@store1.employees.create(first_name: "Rich", last_name: "Man", hourly_rate: 10)
@store2.employees.create(first_name: "Ronrey", last_name: "Gai", hourly_rate: 100)

