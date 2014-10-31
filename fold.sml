fun fold(f, acc, xs) =
  case xs of
    [] => acc
  | x :: xs' => fold(f, f(acc, x), xs')


fun numberInRange(xs, lo, hi) =
  fold (fn (x, y) => x + if y < hi andalso y > lo then 1 else 0, 0, xs)


fun areAllShorter(xs, s) =
  let
    val i = String.size s
  in
    fold ( fn(x,y) => x andalso String.size y < i, true, xs)
  end
