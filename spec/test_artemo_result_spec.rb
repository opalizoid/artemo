require 'artemo'

describe Result do
  context 'Results ' do
    it 'show love' do
      s = Result.call([100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
      sh = s.keys.last
      expect(sh).to eq "love"
    end
    
    it 'show despair' do
      s = Result.call([0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
      sh = s.keys.last
      expect(sh).to eq "despair"
    end
    
    it 'min, max' do
      s = Result.call([100, 30, 30, 30, 30, 30, 30, 5, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 700, 30])
      min, max = s.values.minmax
      expect(min).to eq 3
      expect(max).to eq 100
    end
  end
end
