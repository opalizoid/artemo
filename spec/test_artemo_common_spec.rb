require 'artemo'

describe Common do
  context 'Common method ' do
    it 'scale' do
      s = Common.scale([500, 250, 100, 50, 25, 0, 15, 1])
      expect(s).to eq [100, 50, 20, 10, 5, 0, 3, 0]
    end
  end
end
