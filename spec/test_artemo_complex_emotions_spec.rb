require 'artemo'

describe ComplexEmotions do
  context 'Complex emotions: ' do
    it 'call to first method' do
      ce = ComplexEmotions.call [33, 33, 0, 0, 0, 0, 0, 0, 34, 34, 0, 0, 0, 0, 0, 0, 33, 33, 0, 0, 0, 0, 0, 0]
      expect(ce).to eq [97, 97, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end
  end
end
