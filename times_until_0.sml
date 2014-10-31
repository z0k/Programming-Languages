fun times_until_zero(f, x) =
  if x = 0 then 0 else 1 + times_until_zero(f, f x)


fun f x = x - 1


val x = times_until_zero(f, 3) (* answer 3 *)
