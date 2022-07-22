# recursion_problems
just a code quiz to learn recursion  

1. Define a recursive function that finds the factorial of a number.  

2. Define a recursive function that returns true if a string is a palindrome and false otherwise.  

3. Define a recursive function that takes an argument n and prints 'n bottles of beer on the wall','(n-1) bottles of beer on the wall',...,'no more bottles of beer on the wall'.  

4. Define a recursive function that takes an argument n and returns the fibonacci value of that position. The fibonacci sequence is 0,1,1,2,3,5,8,13,21... So fib(5) should return 5 and fib(6) should return 8.  

5. Define a recursive function that flattens an array. The method should convert [[1,2], [3,4]] to [1,2,3,4] and [[1,[8,9]],[3,4]] to [1,8,9,3,4].  

6. Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.  
  roman_mapping = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I",
  }  

  7. Use the roman_mapping hash to define a recursive method that converts a Roman numeral to an integer.  
    roman_mapping = {
      "M" => 1000,
      "CM" => 900,
      "D" => 500,
      "CD" => 400,
      "C" => 100,
      "XC" => 90,
      "L" => 50,
      "XL" => 40,
      "X" => 10,
      "IX" => 9,
      "V" => 5,
      "IV" => 4,
      "I" => 1
    }  
