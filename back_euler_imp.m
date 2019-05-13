%Backward Euler Method
%dy/dx=-2*x*y   y(0)=1
%y_(n+1)=y_n + h*f(x_(n+1),y_(n+1))

clc

%% Initial Conditions
x0=0;
y0=1;
x_End=5;
h=0.1;
N=(x_End-x0)/h;


%% Initialize Solutions
X=[0:h:x_End];
Y=zeros(N+1,1);
Y(1)=y0;


%% Euler implicit method || Backward Euler

for i=1:N
    x=X(i)+h;
    y=fsolve(@(y) y-Y(i) + h*2*x*y ,Y(i));
    
    X(i+1)=x;
    Y(i+1)=y;
end

plot(X,Y)
