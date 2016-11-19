# @note This class loads file with text to analyze
# @return [Hash] of all text
class Loader

  # @note This method is loading text, next is removing special characters,
  #   next is splitting it to Array.

  def self.call(path)
    begin
      File.read(File.expand_path(path)).gsub!(/[^a-zA-Z ]/, '').downcase!.split(' ')
    rescue
      nil
    end
  end
end
