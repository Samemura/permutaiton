class Array
  def permutation(size=self.length)
    case size
    when 1
      return self.map {|a| [a]}
    when 2..self.length
      return get_permutation(self, self.length - size).map {|a| a.take(size)}
    else
      return []
    end
  end

  private

  def get_permutation(arr, min_len)
    if (arr.length > 1) && (arr.length > min_len)
      ret = []
      (0..arr.length-1).each do |i|
        dup = arr.dup
        dup.delete_at(i)
        ret += get_permutation(dup, min_len).map {|d| [arr[i]] + d}
      end
      return ret
    else
      return [arr]
    end
  end
end
