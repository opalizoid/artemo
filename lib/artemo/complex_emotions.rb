# @note This class analyze complex emotions
# @return [Array] of sum of sorted complex emotions
class ComplexEmotions < Common

  # @note This method initializes class

  def self.call(array_one)
    summed_array = sum(array_one)
    reversed_hash = reverse(summed_array)
    removed_array = remove(reversed_hash.values)
    scaled_array = scale(removed_array)
    checked_array = check(scaled_array)
    weighed_array = weigh(scaled_array, checked_array)
    scale(weighed_array)
  end

  # @note This method is summing values to Hash.

  private
  def self.sum(array_one)
    summed_hash = { }
    i = 0
    while i < array_one.size
      j = 0
      while j < array_one.size
        if i != j
          summed_hash[[i, j]] = array_one[i] + array_one[j]
        end
        j += 1
      end
      i += 1
    end
    summed_hash
  end
  
  # @note This method is cutting hash.
  
  private
  def self.reverse(hash_one)
    i = 0
    while i < hash_one.keys.size
      if hash_one.include?(hash_one.keys[i].reverse)
        hash_one.delete(hash_one.keys[i].reverse)
      end
      i += 1 
    end
    hash_one
  end
  
  # @note This method is removing unnecessary indexes.
  
  private
  def self.remove(array_one)
    indexes = [0, 13, 22, 27]
    array_one.delete_if.with_index { |_, index| indexes.include? index }
    array_one
  end
  
  # @note This method is sorting values.
  
  private
  def self.sort(array_one)
    sorted_array = Array.new(24)
    sorted_array[0] = array_one[0]
    sorted_array[1] = array_one[7]
    sorted_array[2] = array_one[2]
    sorted_array[3] = array_one[9]
    sorted_array[4] = array_one[4]
    sorted_array[5] = array_one[11]
    sorted_array[6] = array_one[12]
    sorted_array[7] = array_one[17]
    sorted_array[8] = array_one[14]
    sorted_array[9] = array_one[19]
    sorted_array[10] = array_one[6]
    sorted_array[11] = array_one[1]
    sorted_array[12] = array_one[20]
    sorted_array[13] = array_one[23]
    sorted_array[14] = array_one[8]
    sorted_array[15] = array_one[3]
    sorted_array[16] = array_one[16]
    sorted_array[17] = array_one[13]
    sorted_array[18] = array_one[10]
    sorted_array[19] = array_one[5]
    sorted_array[20] = array_one[18]
    sorted_array[21] = array_one[15]
    sorted_array[22] = array_one[22]
    sorted_array[23] = array_one[21]
    sorted_array
  end
end
