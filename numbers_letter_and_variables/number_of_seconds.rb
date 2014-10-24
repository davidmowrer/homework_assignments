#!/usr/bin/env ruby

seconds_in_a_minute = 60
minutes_in_a_hour = 60
hours_in_a_day = 24
days_in_a_week = 7
weeks_in_a_year = 52
age_20 = 20
age_100 = 100
seconds_in_a_hour = seconds_in_a_minute * minutes_in_a_hour
seconds_in_a_day = seconds_in_a_hour * hours_in_a_day
seconds_in_a_week = seconds_in_a_day * days_in_a_week
seconds_in_20_years = seconds_in_a_week * weeks_in_a_year * age_20
seconds_in_100_years = seconds_in_a_week * weeks_in_a_year * age_100

puts "There are #{seconds_in_a_minute} seconds in a minute"
puts "There are #{minutes_in_a_hour} seconds in a hour"
puts "There are #{hours_in_a_day} hours in a day"
puts "There are #{days_in_a_week} days in a week"
puts 'That means there are:'
puts "#{seconds_in_a_hour} seconds in a hour"
puts "#{seconds_in_a_day} seconds in a day"
puts "#{seconds_in_a_week} seconds in a week"
puts "That means when you turn #{age_20}, you've been alive for"
puts "#{seconds_in_20_years} seconds,"
puts "and if you make it to #{age_100}, you will have lived"
puts "#{seconds_in_100_years} seconds. Make them count!"
