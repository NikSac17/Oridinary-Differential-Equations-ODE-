%modified euler : ODE    RUNGE-KUTTA 2 ND ORDER
clc

%initial conditions
x=input('Enter given value of x : ');    
y=input('Enter f(x) : '); 


h=.4/4;


for i=1:4
    
    z = -2*x - y;          %differential equation
    k1=z;
    
    y1 = y + k1*h;
    x=x+h;
    
    z1=-2*x - y1;
    
    k2=z1;
    y=y + (h/2)*(k1+k2);
    
end

disp(y)


%step size is important for iterations !!!!!  WARNING  !!!!!!