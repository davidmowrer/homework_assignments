require 'rspec'
require_relative '../../lib/steps_walked'

describe StepsWalked do
  it 'should be a steps walked' do
    expect(subject).to be_a(StepsWalked)
  end

  describe '#total' do
    it 'total should be reset to zero each day' do
      expect(subject.total).to eq(0)
    end
  end

  describe '#bath_total' do
    it 'bath total should be reset to zero each day' do
      expect(subject.bath_total).to eq(0)
    end
  end

  describe '#bed_total' do
    it 'bed total should be reset to zero each day' do
      expect(subject.bed_total).to eq(0)
    end
  end

  describe '#kitchen_total' do
    it 'kitchen total should be reset to zero each day' do
      expect(subject.kitchen_total).to eq(0)
    end
  end

  describe '#front_room_total' do
    it 'front room total should be reset to zero each day' do
      expect(subject.front_room_total).to eq(0)
    end
  end

  describe '#car_total' do
    it 'car total should be reset to zero each day' do
      expect(subject.car_total).to eq(0)
    end
  end

  describe '#grocery_total' do
    it 'grocery total should be reset to zero each day' do
      expect(subject.grocery_total).to eq(0)
    end
  end

  describe '#mail_total' do
    it 'mail total should be reset to zero each day' do
      expect(subject.mail_total).to eq(0)
    end
  end

  describe '#walk_total' do
    it 'walk total should be reset to zero each day' do
      expect(subject.walk_total).to eq(0)
    end
  end

  describe '#bathroom(steps)' do
    it 'should add the steps to the total and to bath total' do
      expect(subject.total).to eq(0)
      expect(subject.bath_total).to eq(0)
      subject.bathroom(20)
      expect(subject.total).to eq(20)
      expect(subject.bath_total).to eq(20)
    end
  end

  describe '#bedroom(steps)' do
    it 'should add the steps to the total and to bed total' do
      expect(subject.total).to eq(0)
      expect(subject.bed_total).to eq(0)
      subject.bedroom(25)
      expect(subject.total).to eq(25)
      expect(subject.bed_total).to eq(25)
    end
  end

  describe '#kitchen(steps)' do
    it 'should add the steps to the total and to kitchen total' do
      expect(subject.total).to eq(0)
      expect(subject.kitchen_total).to eq(0)
      subject.kitchen(42)
      expect(subject.total).to eq(42)
      expect(subject.kitchen_total).to eq(42)
    end
  end

  describe '#frontroom(steps)' do
    it 'should add the steps to the total and to front room total' do
      expect(subject.total).to eq(0)
      expect(subject.front_room_total).to eq(0)
      subject.frontroom(38)
      expect(subject.total).to eq(38)
      expect(subject.front_room_total).to eq(38)
    end
  end

  describe '#car(steps)' do
    it 'should add the steps to the total and to car total' do
      expect(subject.total).to eq(0)
      expect(subject.car_total).to eq(0)
      subject.car(60)
      expect(subject.total).to eq(60)
      expect(subject.car_total).to eq(60)
    end
  end

  describe '#grocery(steps)' do
    it 'should add the steps to the total and to grocery total' do
      expect(subject.total).to eq(0)
      expect(subject.grocery_total).to eq(0)
      subject.grocery(125)
      expect(subject.total).to eq(125)
      expect(subject.grocery_total).to eq(125)
    end
  end

  describe '#mail(steps)' do
    it 'should add the steps to the total and to mail total' do
      expect(subject.total).to eq(0)
      expect(subject.mail_total).to eq(0)
      subject.mail(300)
      expect(subject.total).to eq(300)
      expect(subject.mail_total).to eq(300)
    end
  end

  describe '#walk(steps)' do
    it 'should add the steps to the total and to walk total' do
      expect(subject.total).to eq(0)
      expect(subject.walk_total).to eq(0)
      subject.walk(6889)
      expect(subject.total).to eq(6889)
      expect(subject.walk_total).to eq(6889)
    end
  end

  describe '#car(steps)' do
    it 'should add the steps to the total and to car total' do
      expect(subject.total).to eq(0)
      expect(subject.car_total).to eq(0)
      subject.car(60)
      expect(subject.total).to eq(60)
      expect(subject.car_total).to eq(60)
      expect(subject.total).to eq(60)
      expect(subject.car_total).to eq(60)
      subject.car(120)
      expect(subject.total).to eq(180)
      expect(subject.car_total).to eq(180)
    end
  end
end
