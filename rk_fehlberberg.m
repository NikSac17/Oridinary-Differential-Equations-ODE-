%% Runge Kutta Fehlberg Method
%Local Error O(h^6)
%Global Error O(h^5)

%dy/dx=-2*x-y    ;  y(0)=-1


%% initial conditions
x=0;
y=-1
beta=y;
alpha=x;

h=0.5/5;
%% Runge Kutta Fehlberg Algorithm

for i=1:5
    
    z1=-2*x-y    %differential equation
    k1=z1;
    
    x=x+h/3;
    y=y+k1/3;
    z2=-2*x-y;
    k2=z2;
    
    
    
    
    