# @note This class plots file to pdf

class Plot

  # @note This method is plotting data to pdf. 

  def self.call(path, hash)
    begin
      name = File.basename(path, '.txt')
      Prawn::Document.generate "#{name}.pdf" do
        data = {views: hash}
        chart data, legend: false, label: true, format: :percentage 
      end
      puts "#{name}.pdf"
    rescue
      nil
    end
  end
end
