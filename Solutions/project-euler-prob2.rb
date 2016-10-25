def fib
    start = [1, 2]
    while start[-1] < 4_000_000
        start << start.last(2).reduce(:+)
    end
    start.delete(start[-1])
    sum = 0
    start.each { |x| sum += x if x % 2 == 0 }
    return sum
end
fib
