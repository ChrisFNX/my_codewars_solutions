def comp(array1, array2)
  return false if array1.nil? || array2.nil?

  array1.map{|x| x*x}.group_by(&:itself) == array2.group_by(&:itself)

  array1.sort.map {|x| x*x} == array2.sort
end