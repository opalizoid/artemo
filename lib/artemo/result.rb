# @note This class show results
# @return [Hash] of sorted complex emotions
class Result < Common

  # @note This method initializes all class

  def self.call(array_one)
    finish(array_one)
  end

  # @note This method is showing results.
  
  private
  def self.finish(array_one)
    results = { }
    results_to_show = { }
    array_one.each_index do |index|
      results[titles[index]] = array_one[index]
    end
    results = results.sort_by { |_k, v| v }.to_h
    show_k = results.keys.last(10)
    show_v = results.values.last(10)
    10.times do |t|
      results_to_show[show_k[t]] = show_v[t]
    end
    results_to_show
  end

  # @note This method is storing titles of emotions in Array.

  private
  def self.titles
    ['love', 'remorse', 'guilt', 'envy', 'delight', 'pessimism', 'submission', 'contempt', 'curiosity', 'cynicism', 'sentimentality', 'morbidness', 'awe', 'aggression', 'despair', 'pride', 'shame', 'dominance', 'disappointment', 'optimism', 'unbelief', 'hope', 'outrage', 'anxiety']
  end
end
