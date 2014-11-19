require 'rspec'
require_relative '../../lib/chihuahua'

describe Chihuahua do
  it 'should be a chihuahua' do
    expect(subject).to be_a(Chihuahua)
    expect(subject).to be_a(Dog)
    expect(subject).to be_an(Animal)
  end

  describe '#speak' do
    it 'should yip yip yip' do
      expect(subject.speak).to eq('yip yip yip')
    end
  end

  describe '#legs' do
    it 'should have 4 legs' do
      expect(subject.legs).to eq(4)
    end
  end

  describe '#feet' do
    it 'should have 4 paws' do
      expect(subject.feet).to eq('4 paws')
    end
  end
end
