def sum_to(num)
    sum = 0
    1.upto(num).each do |x|
        sum += x
    end
    return sum
end

def factors(num)
    divisors = []
    x = 1
    while x <= num
        if num % x == 0
            divisors << x
        end
        x += 1
    end
    return divisors
end
def first_to(num)
    x = 0
    until factors(sum_to(x)).length >= num
        x += 1
    end
    print sum_to(x)
end
first_to(500)
