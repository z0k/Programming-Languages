fun get_nth(strings : string list, n : int) =
  if n = 1 then hd strings
  else get_nth(tl strings, n - 1)
