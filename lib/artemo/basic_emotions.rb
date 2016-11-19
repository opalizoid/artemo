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
    scaled_array = scale(sum_array)
    checked_array = check(scaled_array)
    weighed_array = weigh(scaled_array, checked_array)
    scale(weighed_array)
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
end
