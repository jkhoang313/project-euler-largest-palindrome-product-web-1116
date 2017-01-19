# Implement your procedural solution here!
require 'benchmark'
require 'pry'

def largest_palindrome_product
  number = 1000
  [lap_nine(number), lap_three(number), lap_seven(number)].max
end

def lap_nine(number)
  # lap = largest_palindrome_number
  first_palindrome(number - 1, number - 9)
end

def lap_three(number)
  first_palindrome(number - 7, number - 7)
end

def lap_seven(number)
  first_palindrome(number - 3, number - 3)
end

def first_palindrome(number_one, number_two)
  answer = 0
  while answer < 1
    counter = 0
    while counter < 10 && answer < 1
      product = number_one * (number_two - (counter*10))
      counter += 1
      answer = product if product == product.to_s.reverse.to_i
    end
    number_one -= 10
  end
  answer
end

# can replace digits to find largest palindrome product of certain number of digits
# def largest_palindrome_product(digits)
#   number = 10 ** digits.to_i
#   [lap_nine(number), lap_three(number), lap_seven(number)].max
# end
#
# def lap_nine(number)
#   first_palindrome(number - 1, number - 9)
# end
#
# def lap_three(number)
#   first_palindrome(number - 7, number - 7)
# end
#
# def lap_seven(number)
#   first_palindrome(number - 3, number - 3)
# end
#
# def first_palindrome(number_one, number_two)
#   answer = 0
#   while answer < 1
#     counter = 0
#     while counter < 10 && answer < 1
#       product = number_one * (number_two - (counter*10))
#       counter += 1
#       answer = product if product == product.to_s.reverse.to_i
#     end
#     number_one -= 10
#   end
#   answer
# end
#
# Benchmark.bm(10) do |x|
#   x.report("2") {largest_palindrome_product(2)}
#   x.report("3") {largest_palindrome_product(3)}
#   x.report("4") {largest_palindrome_product(4)}
#   x.report("5") {largest_palindrome_product(5)}
#   x.report("6") {largest_palindrome_product(6)}
# end
