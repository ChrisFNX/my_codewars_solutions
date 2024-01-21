def square_digits(num)
  string = ""
  num.to_s.each_char do |digit|
    string << (digit.to_i ** 2).to_s
  end
  string.to_i
end