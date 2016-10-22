#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(number)
    number.downto(0) do |x|
        return x if number % x == 0 && prime?(x)
    end


end

def prime?(n)
    return false if n == 0 || n == 1
    x = 2
    while x < n
        if n % x == 0
            return false
        end
        x += 1
    end
    return true
end
largest_prime_factor(600851475143)
