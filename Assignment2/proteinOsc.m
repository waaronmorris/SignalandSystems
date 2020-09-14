function yp = proteinOsc(t, y, dt, k1, ec50, n, kminus1)
    yp = [
        k1 *(dt(1) - y(1)) - kminus1 * y(1) * (y(3)^n / (ec50^n + y(3)^n));    
        k1 *(dt(2) - y(2)) - kminus1 * y(2) * (y(1)^n / (ec50^n + y(1)^n));
        k1 *(dt(3) - y(3)) - kminus1 * y(3) * (y(2)^n / (ec50^n + y(2)^n))];
    