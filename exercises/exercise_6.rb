require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 70)
@store1.employees.create(first_name: "Gary", last_name: "Jipp", hourly_rate: 80)

@store2.employees.create(first_name: "Travis", last_name: "Borsa", hourly_rate: 70)
@store2.employees.create(first_name: "Bradley", last_name: "Fung", hourly_rate: 60)
@store2.employees.create(first_name: "Chetna", last_name: "Dickerson", hourly_rate: 65)
