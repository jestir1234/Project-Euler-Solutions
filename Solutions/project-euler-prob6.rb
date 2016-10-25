#The sum of the squares of the first ten natural numbers is,

#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def squares_difference
    sum_squares = 0
    square_sums = (Array (1..100).reduce(:+))[-1] ** 2
    1.upto(100) { |x| sum_squares += x ** 2 }
    return square_sums - sum_squares

end
squares_difference
