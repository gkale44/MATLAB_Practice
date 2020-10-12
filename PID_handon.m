y[k] = yp[k] + yi[k]
Ts=0.01;

 yp[k] = Kp * e[k]

 yi[k] = yi[k-1] + Ki*Ts*e[k]

 %-1<= yi[k] <= 1
