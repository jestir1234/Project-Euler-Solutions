#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(num)
    return true if num.to_s == num.to_s.split("").reverse.join
    false
end

def largest_palindrome
    x = 1
    largest = 0
    while x.to_s.length < 4
        y = 1
        while y.to_s.length < 4
            if palindrome?(x * y) && (x * y) > largest
                largest = x * y
            end
            y += 1
        end
        x += 1
    end
    return largest
end
largest_palindrome
