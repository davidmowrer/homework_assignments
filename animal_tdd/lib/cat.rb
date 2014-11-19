require_relative './animal'

class Cat < Animal
  def speak
    'meow'
  end

  def legs
    4
  end

  def feet
    '4 paws'
  end
end
