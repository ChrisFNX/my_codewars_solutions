class RomanNumerals
  ROMAN_TO_INT = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }.freeze
  
  INT_TO_ROMAN = {
    1000 => "M",  
    900 => "CM",  
    500 => "D",  
    400 => "CD",
    100 => "C",  
    90 => "XC",  
    50 => "L",  
    40 => "XL",  
    10 => "X",  
    9 => "IX",  
    5 => "V",  
    4 => "IV",  
    1 => "I",  
  }
  
  def self.to_roman(i)
    n = i
    roman = ""
    INT_TO_ROMAN.each do |value, letter|
      roman << letter*(n / value)
      n = n % value
    end
    roman
  end
  
  def self.from_roman(s)
    num = 0
    for i in 0...s.length do
        if s[i+1] && ROMAN_TO_INT[s[i+1]] > ROMAN_TO_INT[s[i]]
            num -= ROMAN_TO_INT[s[i]]
        else
            num += ROMAN_TO_INT[s[i]]
        end
    end
    num
  end
end