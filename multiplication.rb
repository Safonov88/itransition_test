module Multiplication
  extend self

  def max_multiplication(string)
    return nil unless string?(string)
    combinations = combinations(string)
    return nil if combinations.empty?

    mulitiplication_array = []
    combinations.map do |combination|
      sub_combination = []
      combination.each_char { |s| sub_combination << s.to_i }
      mulitiplication_array << (sub_combination[0] * sub_combination[1] * sub_combination[2] * sub_combination[3])
    end

    mulitiplication_array.sort.last
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
end
