require_relative './animal'

class Dog < Animal
  def speak
    'bark'
  end

  def legs
    4
  end

  def feet
    '4 paws'
  end
end
