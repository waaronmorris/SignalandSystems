clear all;
clf; 

tspan = [0 60];
y0 = [1; 0];

[t, y] = ode45(@(t,y) unforced1(t, y), tspan, y0)

plot(y)
