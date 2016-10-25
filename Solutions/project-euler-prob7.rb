#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

def nth_prime(n)
    x = 1
    prime_count = 0
    prime_num = 0
    until prime_count == n
        if prime?(x)
            prime_count += 1
            prime_num = x
        end
        x += 1
    end
    return prime_num

end
def prime?(num)
    return false if num == 0 || num == 1
    x = 2
    while x < num
        if num % x == 0
            return false
        end
        x += 1
    end
    return true
end
nth_prime(10001)
