require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.sum('annual_revenue')
print "Total revenue: ", @total_revenue
puts

@avg_annual_revenue = Store.average('annual_revenue')
print "Average revenue: ", @avg_annual_revenue
puts

@millionaire_stores = Store.where("annual_revenue >= 1000000").count
print "Millionaire stores: ", @millionaire_stores
puts