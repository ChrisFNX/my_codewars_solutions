def narcissistic?(value)
  string = value.to_s
  sum = 0
  string.each_char do |val|
    sum = sum + (val.to_i ** string.length)
  end
  sum == value
end