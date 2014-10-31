(* Positive Numbers *)

val test_is_positive_1 = is_positive 1 = true
val test_is_positive_2 = is_positive 0 = false
val test_is_positive_3 = is_positive ~1 = false
val test_is_positive_4 = is_positive ~2 = false
val test_is_positive_5 = is_positive 2 = true
val test_is_positive_6 = is_positive 100 = true
