def cube_checker(volume, side)
  return false if side < 1

  (side ** 3).abs == volume
end