%Parameters
k1 = .01;
ec50 = .5;
n = 20;
k_1 = 1;

% Time Values
t0 = (0:1000);

% Initial Conditions and Rates
dt = [1 1 1];
y = [0 0 0];
[t, x]  = ode45(@(t,y) proteinOsc(t, y, dt, k1, ec50, n, k_1), t0, y);
plot(t, x);

dt = [1 1 1];
y = [1 1 1];
[t, x]  = ode45(@(t,y) proteinOsc(t, y, dt, k1, ec50, n, k_1), t0, y);
plot(t, x);

dt = [1 1 1];
y = [1 .99 1];
[t, x]  = ode45(@(t,y) proteinOsc(t, y, dt, k1, ec50, n, k_1), t0, y);
plot(t, x)

