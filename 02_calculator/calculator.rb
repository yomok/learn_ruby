#write your code here
def add(x,y)
    x + y
end

def subtract(x,y)
    x-y
end

def sum(array)
    total =0
    array.each do |i| 
        total = total+i
    end
    return total
end

def multiply(array)
    total = 1
    array.each do |i|
        total *= i
    end
    total
end

def power(a,b)
    a**b
end

def factorial(a)
    result = 1
    (1..a).to_a.each do |x|
        result *=x
    end
    return result
end
