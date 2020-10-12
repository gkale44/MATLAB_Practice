
clc;clearvars;
a=[100]
b=[1 30];
h=tf(a,b);
[z,p,k]=tf2zp(a,b)
w=[0:0.1:10];
%hs=freqs(a,b,w);
%subplot(2,2,1);plot(w,hs);title("Frequency plot");

grid on 
[mag,phase]=bode(a,b,w);
subplot(2,1,1);grid on ;plot(w,mag);title("Magnitude");xlabel("frequency");ylabel("magnitude value");
subplot(2,1,2);grid on;plot(w,phase);title("Phase");xlabel("frequency");ylabel("phase value")



