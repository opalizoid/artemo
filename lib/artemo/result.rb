# @note This class show results
# @return [Hash] of sorted complex emotions
class Result < Common

  # @note This method initializes all class

  def self.call(array_one)
    scaled = scale(array_one)
    finish(scaled)
  end

  # @note This method is showing results.
  
  private
  def self.finish(array_one)
    results = {}
    array_one.each_index do |index|
      results[titles[index]] = array_one[index]
    end
    results.delete_if{|_k, v| v == 0}
    results.sort_by { |_k, v| v }.to_h
  end

  # @note This method is storing titles of emotions in Array.

  private
  def self.titles
    ['love', 'guilt', 'delight', 'submission', 'curiosity', 'sentimentality', 'awe', 'despair', 'shame', 'disappointment', 'revulsion', 'outrage', 'remorse', 'envy', 'pessimism', 'contempt', 'cynicism', 'morbidness', 'aggressiveness', 'pride', 'dominance', 'optimism', 'fatalism', 'anxiety']
  end
end
