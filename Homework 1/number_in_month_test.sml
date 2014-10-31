val test_number_in_month_1 = number_in_month([ (1994, 10, 1)], 10) = 1
val test_number_in_month_2 = number_in_month([], 10) = 0
val test_number_in_month_3 = number_in_month([( 1994, 10, 1),( 1994, 10, 1), ( 1994, 10, 1)], 10) = 3
val test_number_in_month_4 = number_in_month([( 1994, 10, 1),( 1994, 10, 1), ( 1994, 10, 1), (2000, 9, 3)], 10) = 3
