(* Greatest Common Divisor -- Continued *)

val test_gcd_list_1 = gcd_list ([18, 12, 3]) = 3
val test_gcd_list_2 = gcd_list ([18]) = 18
val test_gcd_list_3 = gcd_list ([18, 12, 13]) = 1
val test_gcd_list_4 = gcd_list ([10, 18, 12]) = 2
val test_gcd_list_5 = gcd_list ([100, 1000, 1]) = 1
val test_gcd_list_6 = gcd_list ([18, 12, 180, 42]) = 6
val test_gcd_list_7 = gcd_list ([18, 12]) = 6
