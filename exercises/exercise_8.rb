require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store2.employees.create(first_name: "Pucky", last_name: "Gai", hourly_rate: 100)

puts Employee.where(first_name: 'Pucky').first.password