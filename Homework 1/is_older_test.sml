val test_is_older_1 = is_older( (1994, 12, 1), (1994, 12, 1)) = false
val test_is_older_2 = is_older( (1994, 11, 1), (1994, 12, 1)) = true
val test_is_older_3 = is_older( (1994, 12, 1), (1994, 12, 3)) = true
val test_is_older_4 = is_older( (1993, 12, 1), (1994, 11, 1)) = true
val test_is_older_5 = is_older( (1993, 12, 1), (1994, 12, 1)) = true
val test_is_older_6 = is_older( (1995, 12, 1), (1994, 12, 1)) = false
val test_is_older_7 = is_older( (1995, 10, 8), (1994, 12, 9)) = false
val test_is_older_8 = is_older( (0, 1, 1), (1994, 2, 3)) = true
val test_is_older_9 = is_older( (1994, 12, 1), (1994, 11, 1)) = false