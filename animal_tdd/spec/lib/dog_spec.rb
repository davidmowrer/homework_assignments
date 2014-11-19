require 'rspec'
require_relative '../../lib/dog'

describe Dog do
  it 'should be a dog' do
    expect(subject).to be_a(Dog)
    expect(subject).to be_an(Animal)
  end

  describe '#speak' do
    it 'should bark' do
      expect(subject.speak).to eq('bark')
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
