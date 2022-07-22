# frozen_string_literal: true

require 'pry-byebug'

def factorial(num)
  return 1 if num == 1

  num * factorial(num - 1)
end

def palindrome(str)
  return true if str.length == 1 || str.length.zero?

  return false unless str[0] == str[-1]

  palindrome(str[1..-2])
end

def bottles(n)
  if n.zero?
    puts 'no more bottles of beer on the wall'
  elsif n >= 2
    puts "#{n} bottles of beer on the wall"
    puts "#{n-1} bottles of beer on the wall"
    bottles(n-2)
  else
    puts "#{n} bottles of beer on the wall"
    puts 'no more bottles of beer on the wall'
  end
end

def fib(n)
  return 0 if n.zero?

  return 1 if n == 1

  fib(n - 2) + fib(n - 1)
end

def flatten(arr, flat = [])
  arr.each do |i|
    if i.instance_of?(Array)
      flatten(i, flat)
    else
      flat.push(i)
    end
  end
  flat
end
