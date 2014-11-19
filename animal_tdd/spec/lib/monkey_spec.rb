require 'rspec'
require_relative '../../lib/monkey'

describe Monkey do
  it 'should be a monkey' do
    expect(subject).to be_a(Monkey)
    expect(subject).to be_an(Animal)
  end

  describe '#speak' do
    it 'should make a weird sound' do
      expect(subject.speak).to eq('ooh ooh eee')
    end
  end

  describe '#legs' do
    it 'should have 2 legs' do
      expect(subject.legs).to eq(2)
    end
  end

  describe '#feet' do
    it ' should have 2 feet' do
      expect(subject.feet).to eq(2)
    end
  end

  describe 'arms' do
    it 'should have 2 arms' do
      expect(subject.arms).to eq(2)
    end
  end

  describe 'hands' do
    it 'should have 2 hands' do
      expect(subject.hands).to eq(2)
    end
  end
end
