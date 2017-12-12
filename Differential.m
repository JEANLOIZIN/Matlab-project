%function t=t(n,t0,t1,y0)
function y=Differential(n,t0,t1,y0)
h=(t1-t0)/n;
t(1)=t0;
y(1)=y0;
for i=1:n
t(i+1)=t(i)+h;
y(i+1)=y(i)+h*ex(t(i),y(i));
end;
V=[t',y'];
plot(t,y)

%% how to use the program
%% on matlab prompt, you write euler(n,t0,t1,y0) and return , where n is the number of t-values, 
%% t0 and t1 are the left and right end points and y(t0)=y0 is the innitial condition.
%%have a file ex.m and you type in your equation in the file. 
%%function y=y(t