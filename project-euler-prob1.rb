def multiples
    result = []
    x = 1
    while x < 1000
        if x % 3 == 0 || x % 5 == 0
            result << x
        end
        x += 1
    end
    return result.reduce(:+)

end
multiples
