# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  arr.sum
end

def max_2_sum arr
  arr.sort.last(2).sum
end

def sum_to_n? (arr, n)
  aSize = arr.size - 2;
  if arr.empty?
    return false
  else
    for i in 0..aSize
      return true if arr.at(i) + arr.at(i+1) == n
    end
  end
  return false
end

# Part 2

def hello(name)
  a = "Hello, "
  return a.concat(name)
end

def starts_with_consonant? s
  return false if s.size == 0
  if /^[^BCDFGHJKLMNPQRSTVWXYZ]/i.match(s) == nil
    return true
  else
    return false
  end
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  if /^[10]*[10]$/.match(s)
    return true if s.to_i(2) % 4 == 0
  end
   
end

# Part 3
class BookInStock

  attr_accessor :isbn,:price

  def initialize isbn, price
    raise ArgumentError if isbn.size == 0
    raise ArgumentError if price <= 0
    @price = price
    @isbn = isbn
  end

  def price_as_string
    format("$%.2f", @price)
  end

end