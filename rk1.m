%euler method : differential equation 

%RUNGE-KUTTA 1 ST ORDER


clc

%initial value
x=input('Enter given value of x : ');     
y=input('Enter f(x) : ');                  



h=.4/4;

for i=1:4
    z=  -2*x -y;           %differential equation  z=dy/dx
    y=y + z*h
    x=x+h;
end

disp(y)




%step size is important for iterations !!!!!  WARNING  !!!!!!