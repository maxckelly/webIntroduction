  # celsius = gets.to_i
  # puts celsius
  # fahrenheit = (celsius * 9 / 5) + 32
  # print "The result is: "
  # print fahrenheit
  # puts "."


  # temperature = 14
  # rainingBoolean = true

  # if temperature < 15 && rainingBoolean == true
  #   puts "It's wet and cold"
  # elsif temperature < 15 && rainingBoolean == false
  #   puts "Its not raining but cold"
  # elsif temperature >= 15 && rainingBoolean == false 
  #   puts "It's warm but not raining"
  # else
  #   puts "It's warm and raining"
  # end

# arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
# i = 0
# while (i != arr.length - 1)
#   if arr[i] > arr[i + 1]
#     first_num = arr[i]
#     arr[i] = arr[i + 1]
#     arr[i + 1] = first_num
#   end
#   i = i + 1
# end

# p arr


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


