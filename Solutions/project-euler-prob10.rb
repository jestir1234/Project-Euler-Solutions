# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def prime?(n)
    if n == 0 || n == 1
        return false
    end
    x = 2
    while x < n
        if n % x == 0
            return false
        end
        x += 1
    end
    return true
end
def sum_primes(number)
    sum = 0
    0.upto(number) do |x|
        if prime?(x)
            sum += x
        end
    end
    return sum
end
sum_primes(2_000_000)
