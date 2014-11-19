require 'rspec'
require_relative '../../lib/cat'

describe Cat do
  it 'should be a cat' do
    expect(subject).to be_a(Cat)
    expect(subject).to be_an(Animal)
  end

  describe '#speak' do
    it 'should meow' do
      expect(subject.speak).to eq('meow')
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
