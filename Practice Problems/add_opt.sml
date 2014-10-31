fun add_opt(a : int option, b : int option) =
  if isSome a andalso isSome b then SOME (valOf a + valOf b)
  else NONE
