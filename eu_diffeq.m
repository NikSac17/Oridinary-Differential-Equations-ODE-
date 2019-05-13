%euler method : differential equation 

%RUNGE-KUTTA 1 ST ORDER

function z=eu_diffeq(x,y)
clc

%initial value
x=input('Enter given value of x : ');     % 0
y=input('Enter f(x) : ');                   % 5



h=.4/5;

for i=1:5
    z=  -2*x -y;                       %3*exp(-x) - 0.4*y;
    y=y + z*h
    x=x+h;
end
disp(y)

end




%step size is important for iterations !!!!!  WARNING  !!!!!!