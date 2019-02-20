module Multiplication
  extend self

  def max_multiplication(str)
    return nil unless str.is_a?(String)
    combinations = combinations(str)
    return nil if combinations.empty?

    multiplication(combinations).max
  end

  private

  def multiplication(combinations)
    mulitiplication_array = []
    combinations.map do |combination|
      sub_combination = []
      combination.each_char { |s| sub_combination << s.to_i }

      m = 1
      mulitiplication_array << sub_combination.map{ |i| m *= i }.last
    end

    mulitiplication_array
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
