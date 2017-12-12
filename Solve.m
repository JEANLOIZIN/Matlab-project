% Function to solve dydx=xy.
function Solve(y0)

[x,y] = ode45(@deriv,[0,1],y0);
 
plot(x,y,'b-x');
 
function dydx = deriv(x,y)
 
dydx = x*y;