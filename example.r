d = structure(list(x1 = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), 
                   y1 = c(0L,  0L, 0L, 0L, 0L, 0L, 0L, 0L), 
                   x2 = c(-10L, 10L, 10L, 10L, -10L, 10L, 10L, 10L), 
                   y2 = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), 
                   x3 = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), 
                   y3 = c(-10L, 10L, -10L, 10L, -10L, 10L, -10L, 10L), 
                   h1 = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), 
                   h2 = c(10L, 10L, 10L, 10L, 10L, 10L, 10L, 10L), 
                   h3 = c(10L, 10L, 10L, 10L, 3L, 3L, 3L, 3L)), 
              .Names = c("x1", "y1", "x2", "y2", "x3", "y3", "h1", "h2", "h3"), 
              class = "data.frame", 
              row.names = c(NA, -8L) )
                                 
                                         
print(d)
d$angle <- apply(d, 1, function(x) my_3point_problem(x[1], x[2], x[3], x[4],x[5],x[6],x[7],x[8],x[9])$angle)
d$mag   <- apply(d, 1, function(x) my_3point_problem(x[1], x[2], x[3], x[4],x[5],x[6],x[7],x[8],x[9])$magnitude)
d$i_x   <- apply(d, 1, function(x) my_3point_problem(x[1], x[2], x[3], x[4],x[5],x[6],x[7],x[8],x[9])$i_x)
d$i_y   <- apply(d, 1, function(x) my_3point_problem(x[1], x[2], x[3], x[4],x[5],x[6],x[7],x[8],x[9])$i_y)
print(d)
