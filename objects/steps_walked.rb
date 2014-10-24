#!/usr/bin/env ruby
# Totals number of steps taken  This shows various places I walked to.
# Tracking your steps by different categories.
class StepsWalked
  attr_reader :total, :bath_total, :bed_total, :kitchen_total, :front_room_total,
              :car_total, :grocery_total, :mail_total, :walk_total

  def initialize
    @total = 0
    @bath_total = 0
    @bed_total = 0
    @front_room_total =
    @kitchen_total = 0
    @walk_total = 0
    @mail_total = 0
    @grocery_total = 0
    @car_total = 0
  end

  def bathroom(steps)
    @total += steps
    @bath_total += steps
  end

  def bedroom(steps)
    @total += steps
    @bed_total += steps
  end

  def kitchen(steps)
    @total += steps
    @kitchen_total += steps
  end

  def frontroom(steps)
    @total += steps
    @front_room_total += steps
  end

  def mail(steps)
    @total += steps
    @mail_total += steps
  end

  def walk(steps)
    @total += steps
    @walk_total += steps
  end

  def car(steps)
    @total += steps
    @car_total += steps
  end

  def grocery(steps)
    @total += steps
    @grocery_total += steps
  end
end

if __FILE__ == $0
  steps = StepsWalked.new
  puts "Total steps: #{steps.total}"

  puts 'Steps to bathroom from bedroom and back: 30'
  steps.bathroom(30)
  puts "New total steps: #{steps.total}"

  puts 'Steps to bathroom from bedroom and back: 30'
  steps.bathroom(30)
  puts "New total steps: #{steps.total}"

  puts 'Steps to kitchen from bedroom: 28'
  steps.kitchen(28)
  puts "New total steps: #{steps.total}"

  puts 'Steps to frontroom from kitchen 10'
  steps.frontroom(10)
  puts "New total steps: #{steps.total}"

  puts 'Steps to kitchen from frontroom 10'
  steps.kitchen(10)
  puts "New total steps: #{steps.total}"

  puts 'Steps to car from kitchen 60'
  steps.car(60)
  puts "New total steps: #{steps.total}"

  puts 'Steps from car to grocery store 125'
  steps.car(125)
  puts "New total steps: #{steps.total}"

  puts 'Steps grocery shopping'
  steps.grocery(2000)
  puts "New total steps: #{steps.total}"

  puts 'Steps from grocery store to car 125'
  steps.car(125)
  puts "New total steps: #{steps.total}"

  puts 'Steps to kitchen from car 60'
  steps.kitchen(60)
  puts "New total steps: #{steps.total}"

  puts 'Steps to bathroom from kitchen 22'
  steps.bathroom(22)
  puts "New total steps: #{steps.total}"

  puts 'Steps to frontroom from bathroom 17'
  steps.frontroom(17)
  puts "New total steps:#{steps.total}"

  puts 'Steps to get mail from frontroom 300'
  steps.mail(300)
  puts "New total steps:#{steps.total}"

  puts 'Steps to frontroom for walk back to frontroom 6889'
  steps.walk(6889)
  puts "New total steps:#{steps.total}"

  puts 'Steps to frontroom from bathroom 17'
  steps.bathroom(17)
  puts "New total steps:#{steps.total}"

  puts 'Steps to frontroom from bathroom 17'
  steps.frontroom(17)
  puts "New total steps:#{steps.total}"

  puts 'Steps to frontroom from kitchen 10'
  steps.frontroom(10)
  puts "New total steps: #{steps.total}"

  puts 'Steps to kitchen from frontroom 10'
  steps.kitchen(10)
  puts "New total steps: #{steps.total}"

  puts 'Steps to frontroom from bathroom 17'
  steps.frontroom(17)
  puts "New total steps:#{steps.total}"

  puts 'Steps to bedroom from bathroom 15'
  steps.bedroom(15)
  puts "New total steps:#{steps.total}"

  puts 'Steps to bathroom from kitchen 22'
  steps.bathroom(22)
  puts
  puts "Total steps:               #{steps.total}"
  puts
  puts "Total steps to bath room:   #{steps.bath_total}"
  puts "Total steps to bed room:     #{steps.bed_total}"
  puts "Total steps to kitchen:     #{steps.kitchen_total}"
  puts "total steps to front room:   #{steps.front_room_total}"
  puts "Total steps to car:         #{steps.car_total}"
  puts "Total steps to get mail:    #{steps.mail_total}"
  puts "Total steps to grocery:    #{steps.grocery_total}"
  puts "Total steps walked on walk #{steps.walk_total}"

end
