class Array
  def permutation(size=nil)
    case size
    when 1
      return self.map {|a| [a]}
    when 2..self.length
      return get_permutation(self).map {|a| a.take(size)}
    when nil
      return get_permutation(self)
    else
      return []
    end
  end

  private

  def get_permutation(arr)
    if arr.length > 1
      ret = []
      (0..arr.length-1).each do |i|
        dup = arr.dup
        dup.delete_at(i)
        ret += get_permutation(dup).map {|d| [arr[i]] + d}
      end
      return ret
    else
      return [arr]
    end
  end
end

