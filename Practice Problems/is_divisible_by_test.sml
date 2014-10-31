(* Divisibility *)

val test_is_divisible_by_1 = is_divisible_by(1, 2) = false
val test_is_divisible_by_2 = is_divisible_by(2, 2) = true
val test_is_divisible_by_3 = is_divisible_by(10, 2) = true
val test_is_divisible_by_4 = is_divisible_by(3, 2) = false
val test_is_divisible_by_5 = is_divisible_by(10000, 9999) = false
