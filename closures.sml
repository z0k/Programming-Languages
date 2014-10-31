fun filter(f, xs) =
  case xs of
    [] => []
  | x :: xs' =>
      if f x then x :: filter(f, xs')
      else filter(f, xs')


fun allGreaterThanSeven xs = filter( fn y => y > 7, xs)
fun allGreaterThan (xs, n) = filter( fn y => y > n, xs)


fun allShorterThan1(xs, s) = filter(fn y => String.size y < String.size s, xs)
fun allShorterThan2(xs, s) =
  let
    val i = String.size s
  in
    filter(fn y => String.size y < i, xs)
  end
