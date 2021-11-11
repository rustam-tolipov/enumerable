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
end
