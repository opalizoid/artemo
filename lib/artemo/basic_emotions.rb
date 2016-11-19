# @note This class analyze basic emotions
# @return [Array] of expanded basic emotions to complex emotions
class BasicEmotions < Common
  attr_reader :keywords
  attr_reader :text

  # @note This method initializes class

  def self.call(keywords, text)
    @keywords = keywords
    @text = text
    sum_array = compare
    checked_array = check(sum_array)
    weighed_array = weigh(sum_array, checked_array)
    scaled_array = scale(weighed_array)
    expand(scaled_array)
  end

  # @note This method compare two words, if word is in array text then add one.

  private
  def self.compare
    sum_array = Array.new(8).fill(0)
    @keywords.each.with_index do |line, index|
      line.each do |keyword|
        sum_array[index] += 1 if @text.include?(keyword)
      end
    end
    sum_array
  end

  # @note This method is after inherited method comparing values in gradient,
  #   and it's checking which value is greater, if it's greater then it is true.

  private
  def self.check(array_one)
    values_array = Array.new(8).fill(0)
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

  private
  def self.weigh(array_one, array_two)
    weighed_array = Array.new(8).fill(0)
    array_one.each.with_index do |item, index|
      item.times do
        if array_two[index]
          weighed_array[index] += 2
        else
          weighed_array[index] += 1
        end
      end
    end
    weighed_array
  end

  # @note This method is expanding 8 element array to 24 element array in ranges.

  private
  def self.expand(array_one)
    expanded_array = Array.new(24).fill(0)
    array_one.each.with_index do |item, index|
      i = item
      item.times do
        if i > 67
          expanded_array[index] += 1
        elsif i <= 67 && i > 33
          expanded_array[index + 8] += 1
        elsif i <= 33
          expanded_array[index + 16] += 1
        end
        i -= 1
      end
    end
    expanded_array
  end
end
