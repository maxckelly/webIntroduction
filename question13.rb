class Allergies 
  
  def initialize(score)
    @score = score
  end


  Allergies_numbers = { 
    "eggs" => 1, 
    "peanuts" => 2,
    "shellfish" => 4,
    "strawberries" => 8,
    "tomatoes" => 16,
    "chocolate" => 32,
    "pollen" => 64,
    "cats" => 128
  }

  def is_allergic_to(allergy)
    @score & Allergies_numbers[allergy] > 0
  end

  def allergies
    p Allergies_numbers.keys.select {|allergy| is_allergic_to(allergy)}
  end
end

tom = Allergies.new(74)
p tom.allergies