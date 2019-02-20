module Multiplication
  def max_multiplication(string)
    return nil if string?(string) || combinations?(string)
  end

  def string?(string)
    string.class == String
  end
end
