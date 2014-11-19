class Animal
  def speak
    fail NotImplementedError, 'Subclasses must over-ride speak'
  end

  def legs
    'Look, I have legs!'
  end

  def feet
    'Look, I have feet!'
  end

  def arms
    'Look, I have arms!'
  end

  def hands
    'Look, I have hands!'
  end
end
