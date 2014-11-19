require 'rspec'
require_relative '../../lib/howler'

describe Howler do
  it 'should be a howler' do
    expect(subject).to be_a(Howler)
  end

  describe '#speak' do
    it 'should howl' do
      expect(subject.speak).to eq('howl')
    end
  end

  describe '#legs' do
    it 'should have 2 legs' do
      expect(subject.legs).to eq(2)
    end
  end

  describe '#feet' do
    it 'should have 2 feet' do
      expect(subject.feet).to eq(2)
    end
  end

  describe '#arms' do
    it 'should have 2 arms' do
      expect(subject.arms).to eq(2)
    end
  end

  describe '#hands' do
    it 'should have 2 hands' do
      expect(subject.hands).to eq(2)
    end
  end
end
