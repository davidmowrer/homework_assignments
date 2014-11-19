require 'rspec'
require_relative '../../lib/animal'

describe Animal do
  it 'should be a animal' do
    expect(subject).to be_an(Animal)
  end

  describe '#speak' do
    it 'should raise a NotImplementedError' do
      expect { subject.speak }.to raise_error(NotImplementedError)
    end
  end

  describe '#legs' do
    it 'should have legs' do
      expect(subject.legs).to eq('Look, I have legs!')
    end
  end

  describe '#feet' do
    it 'should have feet' do
      expect(subject.feet).to eq('Look, I have feet!')
    end
  end

  describe '#arms' do
    it 'could have arms' do
      expect(subject.arms).to eq('Look, I have arms!')
    end
  end

  describe '#hands' do
    it 'could have hands' do
      expect(subject.hands).to eq('Look, I have hands!')
    end
  end
end
