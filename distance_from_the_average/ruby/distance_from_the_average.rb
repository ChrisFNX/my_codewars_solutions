def distances_from_average(arr)
  total = arr.sum
  avg = total / arr.length.to_f
  new_arr = []
  arr.each do |item|
    diff = avg - item
    new_arr << diff.round(2)
  end
  new_arr
end