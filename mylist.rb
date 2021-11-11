require_relative 'myenumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

# Verify solution:
# Create our list
list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
list.all? { |e| e < 5 }
# true
list.all? { |e| e > 5 }
# false

# Test #any?
list.any? { |e| e == 2 }
# true
list.any? { |e| e == 5 }
# false

# Test #filter
list.filter(&:even?)
# [2, 4]

# Test #max
list.max { |a, b| a <=> b }
# 4

# Test #min
list.min { |a, b| a <=> b }
# 1

# Test #sort
list.sort { |a, b| b <=> a }
