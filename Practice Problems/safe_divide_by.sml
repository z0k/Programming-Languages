fun safe_divide_by (a : int, b : int) =
  if b <> 0 then SOME (a div b)
  else NONE
