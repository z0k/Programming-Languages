fun filter(f, xs) =
  case xs of
    [] => []
  | x :: xs' =>
      if f x then x :: (filter (f, xs'))
      else filter (f, xs')


fun get_all_even_snd xs =
  filter ( fn (_, v) => v mod 2 = 0, xs)
