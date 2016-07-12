class Array
  def permutation
    get_permutation(self)
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

