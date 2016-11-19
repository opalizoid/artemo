require 'squid'

require 'artemo/keywords'
require 'artemo/loader'

require 'artemo/common'

require 'artemo/basic_emotions'
require 'artemo/complex_emotions'

require 'artemo/result'
require 'artemo/plot'

# @note This class starts all program
# @return [Hash] of complex emotions
class ArtEmo

  # @note This method starts all other methods in classes

  def self.call(text_file)
    keywords = Keywords.call
    text = Loader.call(text_file)
    unless text.nil?
      begin
        basic = BasicEmotions.call(keywords, text)
        complex = ComplexEmotions.call(basic)
        Result.call(complex)
      rescue
        nil
      end
    end
  end
end

# @note This class is helper for ./bin/artemo file
class Starter

  # @note This method is helper for ./bin/artemo file

  def self.call(args)
    if args.empty? 
      puts "artemo [your text file], to plot data to pdf use artemo --plot [your text file]"
    elsif args.first != '--plot'
      puts ArtEmo.call(args.last)
    else
      to_plot = ArtEmo.call(args.last)
      Plot.call(args.last, to_plot)
    end
  end
end
