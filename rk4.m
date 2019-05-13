%RUNGE-KUTTA method : 4 TH ORDER
clc

%initial conditions
x=input('Enter given value of x : ');    
y=input('Enter f(x) : '); 


h=.6/6;

for i=1:6
    
    z=-2*x - y;              %differential equation
    k1=h*z;
    alpha=x;
    
    y2=y+0.5*k1;
    x=x+0.5*h;
    z2=-2*x - y2;
    k2=h*z2;
    
    y3=y+0.5*k2;
    z3=-2*x - y3;
    k3=h*z3;
    
    y4=y+k3;
    z4=-2*(alpha+h) - y4;
    k4=h*z4;
    
    y=y + (1/6)*(k1 + 2*k2 + 2*k3 + k4)
    x=x-0.5*h+h;
    
end

disp(y)
    
    
    