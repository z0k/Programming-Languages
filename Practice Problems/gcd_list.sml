fun gcd_list (xs : int list) =
  if null (tl xs) then hd xs
  else gcd(hd xs, gcd_list(tl xs))
