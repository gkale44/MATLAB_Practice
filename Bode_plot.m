
clc;clearvars;
b=[1 -2 -3];
a=[1 0 0];
h=tf(a,b);
[z,p,k]=tf2zp(a,b)
w=[0:0.1:10];
%hs=freqs(a,b,w);
%subplot(2,2,1);plot(w,hs);title("Frequency plot");

[mag,phase]=bode(a,b,w);
subplot(2,1,1);plot(w,mag);grid on;title("Magnitude");xlabel("frequency");ylabel("magnitude value");
subplot(2,1,2);plot(w,phase);grid on;title("Phase");xlabel("frequency");ylabel("phase value")



