# @note This class have all common classes for all program
# @return [Array] of scaled emotions in range 0..100
class Common

  # @note This method is scaling values in range min..100

  def self.scale(array_one)
    min, max = array_one.minmax
    to_min = ((min.to_f / max.to_f) * 100.0).floor.to_f
    array_one.each_index do |index|
      array_one[index] = ((100.0 - to_min) * (array_one[index] - min).to_f / (max - min).to_f + to_min).to_i
    end
    array_one
  end
  
  # @note This method is checking which value is greater, if it's greater then it is true.

  def self.check(array_one)
    values_array = Array.new(array_one.size).fill(0)
    array_one.each_index do |index|
      next if index.odd?
      difference = array_one[index] - array_one[index + 1]
      if difference >= 0
        values_array[index] = true
        values_array[index + 1] = false
      else
        values_array[index] = false
        values_array[index + 1] = true
      end
    end
    values_array
  end
  
  # @note This method check which value is true and if it's true add two,
  #   else add one.
  
  def self.weigh(array_one, array_two)
    weighed_array = Array.new(array_one).fill(50)
    array_one.each_index do |index|
      50.times do
        if array_two[index]
          weighed_array[index] += 1.25 if array_one[index] >= 75
          weighed_array[index] += 1.0 if array_one[index] < 75 && array_one[index] >= 50
        else
          weighed_array[index] -= 1.0 if array_one[index] < 50 && array_one[index] >= 25
          weighed_array[index] -= 1.25 if array_one[index] < 25
        end
      end
    end
    array_one.each_index do |index|
      if weighed_array[index] >= 0
        weighed_array[index] = weighed_array[index].to_i
      else
        weighed_array[index] = 0
      end
    end
    weighed_array
  end
end
