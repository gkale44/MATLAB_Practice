clc;
fs=1200;
t=0:1/fs:1;
x=sin(2*pi*80*t)+sin(2*pi*150*t);
y=x+rand(size(t));
subplot(3,1,1);
plot(y(1:100));
title("Noisy signal");
xlabel("time t");
ylabel("Amplitude");
Y=fft(y,256);
Pyy=Y.*conj(Y)/300;
f=fs/256*(0:127);
subplot(3,1,2)
plot(f,Pyy(1:128));
title("Power spectral density")
xlabel("Frequency(Hz)");
subplot(3,1,3)
plot(f(1:40),Pyy(1:40))
title("power spectral density")
xlabel("Frequency (Hz)")
