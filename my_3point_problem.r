my_3point_problem <- function(x1,y1,x2,y2,x3,y3,h1,h2,h3){
  # https://cfpub.epa.gov/si/si_public_record_report.cfm?dirEntryId=287064
  # The hydraulic gradient, i = – grad h = – ∇h, is a vector defined by its direction and magnitude. 
  # The components of the vector are ix = – ∂h/∂x and iy = – ∂h/∂y. The physical interpretation of the constants A and B 
  # is that they are actually the components of the hydraulic gradient in the x- and y- direction, ix and iy , 
  # respectively. Inspection of Equation (A-5) reveals that the coefficient C is equal to the hydraulic head 
  # at the origin of the Cartesian system (x = y = 0).
  
  m = matrix( c(x1,y1,1,x2,y2,1,x3,y3,1),nrow = 3,ncol =3, byrow = T)
  h = matrix( c(h1,h2,h3), nrow = 3, ncol = 1)
  
  # EQUATION OF A PLANE h = Ax + By + C
  ABC = solve(m) %*% h
  i_x = ABC[1]
  i_y = ABC[2]
  C = ABC[3]
  
  magnitude= sqrt(i_x^2 + i_y^2)
  angle = atan2(y = i_y, x=i_x ) 
  angle_degrees = atan2(y = i_y, x=i_x ) *360/(2*3.1415)
  return(list(i_x = i_x, i_y = i_y, magnitude = magnitude , angle_degrees = angle_degrees))
}
