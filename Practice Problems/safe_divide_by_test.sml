(* Integer Division -- Continued *)
val test_safe_divide_by_1 = safe_divide_by (6, 3) = SOME 2
val test_safe_divide_by_2 = safe_divide_by (5, 3) = SOME 1
val test_safe_divide_by_3 = safe_divide_by (6, 4) = SOME 1
val test_safe_divide_by_4 = safe_divide_by (6, 2) = SOME 3
val test_safe_divide_by_5 = safe_divide_by (87, 29) = SOME 3
val test_safe_divide_by_6 = safe_divide_by (6, 1) = SOME 6
val test_safe_divide_by_7 = safe_divide_by (8, 9) = SOME 0
val test_safe_divide_by_8 = safe_divide_by (8, 8) = SOME 1
val test_safe_divide_by_9 = safe_divide_by (6, 0) = NONE
val test_safe_divide_by_10 = safe_divide_by (5, 0) = NONE
val test_safe_divide_by_11 = safe_divide_by (87, 0) = NONE
