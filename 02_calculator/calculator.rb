def add (a, b)
  result = a + b
end

def subtract(a, b)
  result = a - b
end

def sum(array)
  result = 0

  if array[0] != nil
    array.each do |i|
      result = result + i
    end
  end

  result
end

def multiply(array)
  result = 1

  if array[0] != nil
    array.each do |i|
      result = result * i
    end
  else
    result = 0
  end

  result
end

def power(a, b)
  result = a**b
end

def factorial(number)
  result = 1
  
  if number > 1 #does not filter out negative numbers
    while number > 1
      result = result * number
      number = number - 1
    end
  end

  result
end
