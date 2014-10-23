#!/usr/bin/env ruby

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |number|
  print number.to_s + '...'
end
puts
print 'T-'
print numbers.reverse.join(', ')
puts '... BLASTOFF!'
puts 'The last element is ' + numbers[9].to_s
puts 'The first number is ' + numbers[0].to_s
puts 'The third element is ' + numbers[2].to_s
puts 'The element with the index of 3 is ' + numbers[3].to_s
puts 'The second from the last element is ' + numbers[8].to_s
print 'The first four elements are ' + numbers[0].to_s, ', ' + numbers[1].to_s,
      ', ' + numbers[2].to_s, ', '  + numbers[3].to_s
puts
numbers.delete(5)
numbers.delete(6)
numbers.delete(7)
puts "If we delete 5, 6 and 7 from the array, we're' left with " + numbers.to_s
numbers.insert(0, 5)
puts "If we add 5 to the beginning of the array, we're left with " + numbers.to_s
numbers.push(6)
puts "if we add 6 to the end of the array, we're left with " + numbers.to_s
puts 'Only the elements ' + numbers.values_at(6, 7).to_s + ' are > 8'
numbers.clear
puts 'If we remove all the elements, then the length of the array is ' + numbers.length.to_s
