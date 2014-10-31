fun count(m : string list) =
  if null m then 0
  else 1 + count(tl m)
