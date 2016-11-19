require 'artemo'

describe Keywords do
  context 'Created database of keywords from file' do
    it 'should class be Array' do
      k = Keywords.call
      expect(k).to be_instance_of Array
    end

    it 'should size be 8' do
      k = Keywords.call.size
      s = 8
      expect(k).to eq s
    end

    it 'should first element of array be > 500' do
      k = Keywords.call.first.size
      expect(k).to be > 500
    end

    it 'should last element of array be > 500' do
      k = Keywords.call.last.size
      expect(k).to be > 500
    end
  end
end

