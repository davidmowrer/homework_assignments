require 'rspec'
require_relative '../../lib/cash_register'

describe CashRegister do

  it 'should be a cash register' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should return 0.00 for a new cash register' do
      expect(subject.total).to eq(0.00)
    end
  end

  describe '#purchase(amount)' do
    it 'should add the amount to the total for a purchase' do
      expect(subject.total).to eq(0.00)
      subject.purchase(22.98)
      expect(subject.total).to be_within(0.001).of(22.98)
    end
  end

  describe '#purchase(amount)' do
    it 'should add the amount to the total for two purchase' do
      expect(subject.total).to eq(0.00)
      subject.purchase(22.98)
      subject.purchase(13.14)
      expect(subject.total).to be_within(0.001).of(36.12)
    end
  end

  describe '#purchase(amount)' do
    it 'should add the amount to the total of two purchases & subtract paid, no balance' do
      expect(subject.total).to eq(0.00)
      subject.purchase(9.54)
      subject.purchase(18.46)
      expect(subject.total).to be_within(0.001).of(28.00)
      subject.pay(28.00)
      expect(subject.total).to be_within(0.001).of(0.00)
    end
  end

  describe '#purchase(amount)' do
    it 'should add the amount to the total of two purchases, subtract paid (twice),
        balance paid(3.88)' do
      expect(subject.total).to eq(0.00)
      subject.purchase(22.98)
      subject.purchase(13.14)
      expect(subject.total).to be_within(0.001).of(36.12)
      subject.pay(30.00)
      expect(subject.total).to be_within(0.001).of(6.12)
      subject.pay(10.00)
      subject.pay(3.88)
      expect(subject.total).to be_within(0.001).of(0.00)
    end
  end
end
