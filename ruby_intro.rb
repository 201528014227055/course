
# Part 1

def sum arr
  sum=0
  arr.each{|x|sum=sum+x}
  return sum
end

def max_2_sum arr
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
  return "Hello, "<<name
end

def starts_with_consonant? s
  return (/\A[\p{L}&&[^AEIOUaeiou]]/ =~ s) != nil
end

def binary_multiple_of_4? s
  if /\A0\Z/ =~ s
    return true
  else
    return (/\A[01]*0{2}\Z/ =~ s) != nil
  end
end


# Part 3

class BookInStock
  def initialize(isbn,price)
    if isbn==""||price<=0.0
      @flag=nil
      raise ArgumentError
    end
  rescue =>err
    puts err
  else
    @isbn=isbn
    @price=price
  end

  def isbn
    if @flag
      raise ArgumentError
    end
  rescue => err
    puts err
  else
    @isbn
  end

  def price
    if @flag
      raise ArgumentError
    end
  rescue => err
    puts err
  else
    @price
  end

  def price_as_string()
    if @flag
      raise ArgumentError
    end
  rescue => err
    puts err
  else
    puts "$%.2f" % @price
  end
end 
