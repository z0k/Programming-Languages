fun divide_by (x : int, y : int) =
  if x < y then 0
  else 1 + divide_by(x - y, y)
