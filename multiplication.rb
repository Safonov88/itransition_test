module Multiplication
  def max_multiplication(string)
    return nil unless string?(string) || combinations?(string)
  end

  def string?(string)
    string.class == String
  end

  def combinations(string)
    array = []
    count_sub_strings = string.size - 3

    count_sub_strings.times do |first|
      last = first + 3
      array << string[first..last] if correct_combination?(string[first..last])
    end

    array
  end

  def correct_combination?(string)
    string.scan(/\D/).empty?
  end

  def combinations?(string)
    !combinations(string).empty?
  end
end
