class Dancer

  def initialize(name, age)
    @name = name
    @age = age
    @dance_card = []
  end

  def pirouette
    p "*twirls*"
  end

  def bow
    p "*bows*"
  end

  def card
    @dance_card
  end

  def queue_dance_with(name)
    @dance_card << name
  end

  def begin_next_dance
    p "Now dancing with #{@dance_card.delete_at(0)}."
  end

  def name
    @name
  end
  def age
    @age
  end
  def age=(new_age)
    @age = new_age
  end

end