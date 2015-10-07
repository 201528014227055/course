# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  arr.each{|x|sum=sum+x}
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length>1
    srt_arr=arr.sort
    sum += srt_arr[-2]+srt_arr[-1]
  else
    if arr.length==1
      sum += arr[0]
    end
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if 0==arr.length
  	if 0==n
  		return true
  	else
  		return false
  	end
  else
  	if 1==arr.length
  		if arr[0]==n
  			return true
  		else
  			return false
  		end
  	else
  		symb=0
  		arr.each{|x|
  			flag=n-x
  			arr.each{|y|
  				# 寻找 配对数flag，并且两个求和的数不能相同
  				if flag==y&&x!=y
  					symb=1
  				end
  			}
  		}
  	end
  	if symb==1
  		return true
  	else
  		return false
  	end
  end
end



# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "<<name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (/\A[\p{L}&&[^AEIOUaeiou]]/ =~ s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /\A0\Z/ =~ s
    return true
  else
    return (/\A[01]*0{2}\Z/ =~ s) != nil
  end
end




# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn,price)
		@ISBN=isbn
		@PRICE=price
    if @ISBN==""||@PRICE<=0.0
      raise ArgumentError
    end
  rescue =>err
    puts err
    puts "Plese input proper ISBN (cannot be null) and price (more than 0)!"
	end
	def price_as_string()
    if @ISBN==""||@PRICE<=0.0
      raise ArgumentError
    end
  rescue => err
    puts err
  else
		puts "$%.2f" % @PRICE
	end
end