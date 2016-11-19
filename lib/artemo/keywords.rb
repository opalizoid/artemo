# @note This class create database of keywords
# @return [Array] of keywords
class Keywords

# @note This method is loading database of emotions (source: http://saifmohammad.com)
#   in binary format.
  
  def self.call
    include = File.expand_path('../../../include/database.db', __FILE__)
    f = File.open(include, "rb")
    Marshal.load(f)
  end
end
