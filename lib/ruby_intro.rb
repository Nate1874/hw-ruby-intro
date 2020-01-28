# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end



def max_2_sum arr
  # YOUR CODE HERE
  if arr.length==0
    return 0
  elsif arr.length==1
    return arr[0]
  end
  sorted_arr = arr.sort
  return sorted_arr[-1]+sorted_arr[-2]
end



def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length<2
    return false
  end
  for i in 0..arr.length-1
    for j in 0..arr.length-1
      if(i!=j)&&(arr[i]+arr[j]==n)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ["Hello,", name].join(" ")
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0 
    return false
  end
  s_lower = s.downcase
  if s_lower =~ /^[aeiou\W].*/
    return false
  end
  return true
end


def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length==0
    return false
  end
  if s =~ /^[01]+/
    if s.to_i(2) % 4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.size == 0 or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$" + ("%.2f" % @price)
  end
  
end
