my_vec = rep(1:3, 5)
my_vec
my_bool_vec = c(my_vec == 3)
data.frame(my_vec, my_bool_vec)
my_df = data.frame(my_vec, my_bool_vec)
my_vec[my_bool_vec == TRUE]


