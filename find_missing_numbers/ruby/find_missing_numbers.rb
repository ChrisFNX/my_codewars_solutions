def find_missing_numbers(arr)
  return [] if arr.empty?
  missing = []
  (arr.first..arr.last).to_a.each do |val|
    unless arr.include?(val)
      missing << val
    end
  end
  missing
end