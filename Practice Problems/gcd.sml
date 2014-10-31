fun gcd(x : int, y : int) =
  if x = y then x
  else if x > y then gcd(x - y, y)
  else gcd(x, y - x)
