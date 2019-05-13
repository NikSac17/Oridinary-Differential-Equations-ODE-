%romberg integration
clc

f=@(x) 1./x;

a=input('Enter lower limit of integral : ');
b=input('Enter upper limit o integral : ');
n=input('Enter number of intervals : ');
h=(b-a)/n;


A=f(a);
B=f(b);


