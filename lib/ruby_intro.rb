# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    s=0
    arr.each{ |i| s+=i }
    return s
end

def max_2_sum arr
  # YOUR CODE HERE
    if arr.empty?
        return 0
    elsif arr.length == 1
        return arr[0]
    else
        arr.sort!.reverse!
        return arr[0] + arr[1]
    end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    arr_len = arr.length
    if arr_len == 0 || arr_len == 1
        return false
    else
        for i in 0...arr_len-1
            for j in i+1...arr_len
                if arr[i]+arr[j] == n
                    return true
                end
            end
        end
        return false
    end    
end

# Part 2

def hello(name)
  # YOUR CODE HERE
    return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
    if s.length == 0
        return false
    end
    first_char = s[0].downcase
    if /[^a-z]/.match(first_char) != nil #use this method because Ruby 2.3.7
        return false
    elsif /[^aeiou]/.match(first_char) != nil
        return true
    else
        return false
    end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    if s.length == 0
        return false
    elsif /[^01]/.match(s) != nil #check valid binary string first, only 1,0
        return false
    else
        bin_num = s.to_i(2)
        if bin_num % 4 == 0
            return true
        else
            return false
        end
    end
end

# Part 3

class BookInStock
# YOUR CODE HERE
    def initialize(isbn, price)
        raise ArgumentError, "ISBN is empty" unless isbn.length != 0
        raise ArgumentError, "Invalid price" unless price > 0
        @isbn = isbn
        @price = price
    end
    #getters
    def isbn
        @isbn
    end

    def price
        @price
    end
    #setters
    def isbn=(isbn)
        @isbn = isbn
    end

    def price=(price)
        @price = price
    end

    def price_as_string
        return "$" + sprintf("%#.2f", @price)
    end
end
