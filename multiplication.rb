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
      array << string[first..last]
    end
  end
end
