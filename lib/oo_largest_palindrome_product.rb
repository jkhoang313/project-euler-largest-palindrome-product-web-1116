# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    number = 1000
    [lap_nine(number), lap_three(number), lap_seven(number)].max
  end

  def lap_nine(number)
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
end
