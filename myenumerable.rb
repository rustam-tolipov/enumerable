module MyEnumerable
  def all?
    each do |e|
      return false unless yield(e)
    end
    true
  end

  def any?
    each do |e|
      return true if yield(e)
    end
    false
  end

  def filter
    result = []
    each do |e|
      result << e if yield(e)
    end
    result
  end

  def max
    max = nil
    each do |e|
      max = e if max.nil? || e > max
    end
    max
  end

  def min
    min = nil
    each do |e|
      min = e if min.nil? || e < min
    end
    min
  end

  def sort
    result = []
    each do |e|
      result << e
    end
    result.sort
  end
end
