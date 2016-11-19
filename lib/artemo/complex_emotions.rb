# @note This class analyze complex emotions
# @return [Array] of sum of sorted complex emotions
class ComplexEmotions < Common

  # @note This method initializes class

  def self.call(array_one)
    scaled_array = scale(array_one)
    sorted_array = sort(scaled_array)
    sum(sorted_array)
  end

  # @note This method is sorting values by pattern x+0, x+8, x+16 then (x*3), (x*3)+1, (x*3)+2.

  private
  def self.sort(array_one)
    sorted_array = Array.new(24)
    tmp_array = Array.new(3)
    (sorted_array.size / 3).times.with_index do |_time, index|
      tmp_array[0] = array_one[index]
      tmp_array[1] = array_one[index + 8]
      tmp_array[2] = array_one[index + 16]

      sorted_array[index * 3] = tmp_array[0]
      sorted_array[(index * 3) + 1] = tmp_array[1]
      sorted_array[(index * 3) + 2] = tmp_array[2]
    end
    sorted_array
  end

  # @note This method is summing values if they are greater than 25.

  private
  def self.sum(array_one)
    sum_array = Array.new(24).fill(0)
    index = 0
    while index < array_one.size
      3.times do |time_one|
        3.times do |time_two|
          tmp = (3 + index + (3 * time_two)) + time_one
          tmp = array_one.size - tmp if tmp >= 24
          logic_switch = array_one[tmp] >= 50 && array_one[index + time_one] >= 50
          array_one[index].times do
            sum_array[index + time_one] += 1 if logic_switch
          end
        end
      end
      index += 3
    end
    sum_array
  end
end
