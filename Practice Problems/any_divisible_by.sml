fun any_divisible_by (numbers : int list, divisor : int) =
  not (null numbers orelse
  not (is_divisible_by(hd numbers, divisor) orelse
  any_divisible_by (tl numbers, divisor)))
