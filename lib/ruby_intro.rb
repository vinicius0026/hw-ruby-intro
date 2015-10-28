# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  accumulated = 0
  arr.each {|n| accumulated += n}
  accumulated
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort!.reverse!
  arr[0] + arr[1]
end

def sum_to_n? arr, n
  arr.each_index do |i|
    if arr.include?(n - arr[i]) and arr.find_index(n - arr[i]) != i
      return true
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, " << name
end

def starts_with_consonant? s
  s[0] =~ /[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4? s
  return false if s =~ /[^01]/ or s.length == 0
  s.to_i(10) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0 or price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$#{format("%.2f", @price)}"
  end
end
