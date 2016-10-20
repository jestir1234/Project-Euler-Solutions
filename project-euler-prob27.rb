def consecutive_primes?(n, a, b)

    (0..n).all? do |x|
        prime?(formula(x, a, b))
    end

end
def iteration
    result = {}
    product_of_coefficients = []
    n = 0
    while n < 100
        a = 0
        while a < 100
            b = 0
            while b < 100
                if consecutive_primes?(n, a, b)
                    if !result.include?(n)
                        result[n] = [a, b]
                    end
                end
                b += 1
            end
            a += 1
        end
        n += 1
    end
    return result
end

def formula(n, a, b)
    return (n ** 2) + (a * n) + b
end

def prime?(num)
    if num == 0 || num == 1
        return false
    end
    x = 2
    while x < num
        if num % x == 0
            return false
        end
        x += 1
    end
    return true
end
iteration
