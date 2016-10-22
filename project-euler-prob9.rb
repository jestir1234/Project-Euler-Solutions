def pyth_triplet
    result = []
    a = 0
    until result.reduce(:+) == 1000
        b = 0
        while b < 300
            if squareroot((a ** 2) + (b ** 2))
                c = square((a ** 2) + (b ** 2))
                result += [[a, b, c]]
            end
            b += 1
        end
        a += 1
    end
    return product(result)
end
def square(num)
    x = 1
  while x < num
    if num / x == x
      return x
    end
    x += 1
  end
  return 0

end

def squareroot(num)
  x = 1
  while x < num
    if num / x == x
      return true
    end
    x += 1
  end
  return false
end
def product(array)
    product = 1
    array.each do |x|
        product *= x
    end
    return product
end
pyth_triplet
