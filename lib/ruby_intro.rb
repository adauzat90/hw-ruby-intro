# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum()
end

def max_2_sum arr
  # YOUR CODE HERE
  sorted = arr.sort.reverse
  sorted.take(2).sum
end

def sum_to_n? arr, n
  if arr.length == 1; return false end
  
  for i in 0..arr.length() - 1 do
    if (arr[i] + arr[i-1]) == n 
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  downcased = s.downcase
  if /^[^aeiou\W]/i.match(downcased) == nil
    return false
  else
    return true
  end
  
end

def binary_multiple_of_4? s
  Float(s) != nil rescue return false
  return s.to_i % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn != ""
      @isbn = isbn
    else
      raise ArgumentError
    end
    
    if price > 0 
      @price = price
    else
      raise ArgumentError
    end
  end
  
  def price_as_string
    sprintf( "$%0.02f", price)
  end
  
end
