%RUNGE-KUTTA method : 1 ST ORDER
%euler method
%SECOND ORDER DIFFERENTIAL EQUATION

%2*d2y/dx2 + 3*dy/dx  +5*y = 11*exp(-x)


clc

%initial conditions
x=0;   
y=7;    %y(0)=7
z=13 ;  %y'(0)=13


h=0.5/50;

for i=1:50
    
    lamda=z;   %lamda=dy/dx
    y = y + lamda*h;
    
    z_prime = (11*exp(-x) - 5*y -3*z)/2 ;        %z_prime=z'
    z =z + z_prime*h;
    
    x=x+h;
end

disp(y)     %y_analytical=9.9046
    
    