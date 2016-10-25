def spiral
    increment = 0
    right = []
    down = []
    left = []
    up = []
    x = 0
    row_length1 = 0
    row_length2 = 0
    row_length3 = 0
    row_length4 = 0
    until row_length1 == 1001
        increment += 1
        x += increment
        right << x
        x += increment
        down << x + 1
        increment += 1
        x += increment
        left << x + 1
        x += increment
        up << x + 1
        row_length1 = up[-1] - left[-1] - 1
        row_length2 = left[-1] - down[-1] - 1
        row_length3 = down[-1] - right[-1] - 1
        row_length4 = right[-1] - up[-1] - 1
    end
    down.delete(down[-1])
    left.delete(left[-1])
    up.delete(up[-1])
    sum_right = right.reduce(:+)
    sum_down = down.reduce(:+)
    sum_left = left.reduce(:+)
    sum_up = up.reduce(:+)
    return sum_right + sum_down + sum_left + sum_up

end
spiral
