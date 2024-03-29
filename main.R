library(lpSolve)

f.con = matrix(
  c(
    #1,  2,  3, 4, 5,  6,  7,  8,  9, 10, 11, 12
    1,  0,  0, 0, 0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0, 0, 0,  0,  1,  1,  0,  0,  0,  0,
    -1,  1,  1, 0, 0,  0,  0,  0,  0,  0,  0,  0,
    0, -1,  0, 1, 0,  0,  0,  0,  0,  0,  0,  0,
    0,  0, -1, 0, 1, -1,  0,  0,  0,  0,  0,  0,
    0,  0,  0, 0, 0,  1, -1,  0,  1,  0,  0,  0,
    0,  0,  0, 0, 0,  0,  0,  0, -1, -1,  1,  1,
    0,  0,  0, 0, 0,  0,  0, -1,  0,  1,  0,  0,
    0,  0,  0, 0, 0,  0,  0,  0,  0,  0,  1,  0,
    0,  0,  0, 0, 0,  0,  0,  0,  0,  0,  0,  1,
    0,  0,  0, 1, 1,  0,  0,  0,  0,  0,  0,  0
  ), nrow = 11, byrow = TRUE
)

f.obj = c(99, 2, 3,4, 5, 6, 7, 8, 9, 10, 11, 12)
f.dir  = c(
  rep("<=", 2), rep("==", 9)
)

f.rhs = c(600, 500, rep(0, 6), 200, 200, 200)


lp ("min", f.obj, f.con, f.dir, f.rhs)






