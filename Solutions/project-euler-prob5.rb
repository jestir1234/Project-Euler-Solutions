#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def even_divide?(num)
    range = Array (1..20)
    range.all? { |x| num % x == 0 }
end

def smallest
    num = 1
    until even_divide?(num)
        num += 1
    end
    return num
end
smallest
