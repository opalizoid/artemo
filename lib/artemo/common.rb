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
end
