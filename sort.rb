module Sort
  def self.sort_by_binary(array)
    array.sort_by { |element| [ element.to_s(2).count('1'), element ] }
  end
end
