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

def fib(num)
  return 0 if num.zero?

  return 1 if num == 1

  fib(num - 2) + fib(num - 1)
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

# translates between roman numerals and european numerals
class RomanNumerals
  attr_reader :roman, :numeric

  @chart = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }
  def initialize(roman: '', numeric: 0)
    @roman = roman
    @numeric = numeric
  end

  def num_to_rom(string = '')
    if @numeric >= 1000
      string = string.prepend('M')
      num_to_rom(numeric - 1000)
    else
      string
    end
  end
end

def num_to_rom(num, str = '')
  if num >= 1000
    str = "#{str}M"
    num_to_rom(num - 1000, str)
  elsif num >= 900
    str = "#{str}CM"
    num_to_rom(num - 900, str)
  elsif num >= 500
    str = "#{str}D"
    num_to_rom(num - 500, str)
  elsif num >= 400
    str = "#{str}CD"
    num_to_rom(num - 400, str)
  elsif num >= 100
    str = "#{str}C"
    num_to_rom(num - 100, str)
  elsif num >= 90
    str = "#{str}XC"
    num_to_rom(num - 90, str)
  elsif num >= 50
    str = "#{str}L"
    num_to_rom(num - 50, str)
  elsif num >= 40
    str = "#{str}XL"
    num_to_rom(num - 40, str)
  elsif num >= 10
    str = "#{str}X"
    num_to_rom(num - 10, str)
  elsif num >= 9
    str = "#{str}IX"
    num_to_rom(num - 9, str)
  elsif num >= 5
    str = "#{str}V"
    num_to_rom(num - 5, str)
  elsif num >= 4
    str = "#{str}IV"
    num_to_rom(num - 4, str)
  elsif num >= 1
    str = "#{str}I"
    num_to_rom(num - 1, str)
  else
    str
  end
end
