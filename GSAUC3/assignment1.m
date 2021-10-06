// d=linspace(0,360,20);
// s=sind(d);
// c=cosd(d);
// t=tand(d);
// plot(d,t);
// xlabel('d');
// ylabel('tan d');
// plot(d,s);
// xlabel('d');
// ylabel('sin d');
// plot(d,c);
// xlabel('d');
// ylabel('cos d');
// e=exp(i*d);
// plot(real(e),imag(e));
// title('Graph of real vs imaginary part of e^(i*theta)')
// xlabel('Real part of e');
// ylabel('Imaginary part of e');

// %answer of 3d plot
// d=linspace(0,360,20);
// s=sind(d);
// c=cosd(d);
// t=tand(d);
// plot3(c,s,d)

t=linspace(0,10*pi,128);
t1=linspace(0,10*pi,101);
t2=linspace(0,10*pi,127);
t3=linspace(0,10*pi,63);
t4=linspace(0,10*pi,255);
t5=linspace(0,10*pi,65535);


%sin starts here
y=sin(t);
fc=fft(y);
y1=sin(t1);
y2=sin(t2);
y3=sin(t3);
y4=sin(t4);
y5=sin(t5);
fc1=fft(y1);
fc3=fft(y2);
fc3=fft(y3);
fc4=fft(y4);
fc5=fft(y5)64 sin functions plot
figure(1);
stem(t,y1);
xlabel('discrete t');ylabel('sin t');
title('no. sample is 101 ')
figure(2);
stem(t,y2);
xlabel('discrete t');ylabel('sin t ');
title('no. sample is 128 ')
figure(3);
stem(t,y3);
xlabel('discrete t');ylabel('sin t');
title('no. sample is 64 ')
figure(4);
stem(t,y4);
xlabel('discrete t');ylabel('sin t');
title('no. sample is 256 ')
figure(5);
stem(t,y5);
xlabel('discrete t');ylabel('sin t');
title('no. sample is 65536 ')
% its fourier plot

figure(1);
stem(fc1);
xlabel('discrete t');ylabel(' f.t of sin t');
title('no. sample is 101 ')
figure(2);
stem(fc3);
xlabel('discrete t');ylabel('f.t of sin t ')64itle('no. sample is 128 ')
figure(3);
stem(fc3);
xlabel('discrete t');ylabel('f.t of sin t');
title('no. sample is 64 ')
figure(4);
stem(fc4);
xlabel('discrete t');ylabel('f.t of sin t');
title('no. sample is 256 ')
figure(5);
stem(fc5);
xlabel('discrete t');ylabel('f.t of sin t');
title('no. sample is 65536 ')



%cos starts here
x=cos(t);
fc=fft(y);
x1=cos(t1);
x2=cos(t2);
x3=cos(t3);
x4=cos(t4);
x5=cos(t5);
fc1=fft(x1);
fc2=fft(x2);
fc3=fft(x3);
fc4=fft(x4);
fc5=fft(x5);
% cos function plot
figure(1);
stem(t,x1);
xlabel('discrete t');ylabel('cos t');
title('no. sample is 101 ')
figure(2);
stem(t,x2);
xlabel('discrete t');ylabel('cost ');
title('no. sample is 128 ')
figure(3);
stem(t,x3);
xlabel('discrete t');ylabel('cos t');
title('no. sample is 64 ')
figure(4);
stem(t,x4);
xlabel('discrete t');ylabel('cos t');
title('no. sample is 256 ')
figure(5);
stem(t,x5);
xlabel('discrete t');ylabel('cos t');
title('no. sample is 65536 ')
% its fourier plot
figure(6);
stem(fc1);
xlabel('discrete t');ylabel(' f.t of cos t');
title('no. sample is 101 ')
figure(7);
stem(fc2);
xlabel('discrete t');ylabel('f.t of cos t ');
title('no. sample is 128 ')
figure(8);
stem(fc3);
xlabel('discrete t');ylabel('f.t of cos t');
title('no. sample is 64 ')
figure(9);
stem(fc4);
xlabel('discrete t');ylabel('f.t of cos t');
title('no. sample is 256 ')
figure(10);
stem(fc5);
xlabel('discrete t');ylabel('f.t of cos t');
title('no. sample is 65536 ')


% for sin
figure(1)
subplot(2,2,1); stem(real(fc1));xlabel('Discrete Samples over a range of n =101 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc1));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc1));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc1));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');

figure(2)
subplot(2,2,1); stem(real(fc2));xlabel('Discrete Samples over a range of n =128 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc2));xlabel('Discrete Samples over a range of n =128 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc2));xlabel('Discrete Samples over a range of n =128 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc2));xlabel('Discrete Samples over a range of n =128 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');

figure(3)
subplot(2,2,1); stem(real(fc3));xlabel('Discrete Samples over a range of n =64 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc3));xlabel('Discrete Samples over a range of n =64 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc3));xlabel('Discrete Samples over a range of n =64 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc3));xlabel('Discrete Samples over a range of n =64 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');

figure(4)
subplot(2,2,1); stem(real(fc4));xlabel('Discrete Samples over a range of n =256 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc4));xlabel('Discrete Samples over a range of n =256 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc4));xlabel('Discrete Samples over a range of n =256 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc4));xlabel('Discrete Samples over a range of n =256 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');

figure(5)
subplot(2,2,1); stem(real(fc5));xlabel('Discrete Samples over a range of n =65536 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc5));xlabel('Discrete Samples over a range of n =65536 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc5));xlabel('Discrete Samples over a range of n =65536 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc5));xlabel('Discrete Samples over a range of n =65536 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');






% for cos
figure(1)
subplot(2,2,1); stem(real(fc1));xlabel('Discrete Samples over a range of n =101 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc1));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc1));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc1));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');

figure(2)
subplot(2,2,1); stem(real(fc2));xlabel('Discrete Samples over a range of n =128 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc2));xlabel('Discrete Samples over a range of n =128 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc2));xlabel('Discrete Samples over a range of n =128 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc2));xlabel('Discrete Samples over a range of n =128 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');

figure(3)
subplot(2,2,1); stem(real(fc3));xlabel('Discrete Samples over a range of n =64 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc3));xlabel('Discrete Samples over a range of n =64 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc3));xlabel('Discrete Samples over a range of n =64 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc3));xlabel('Discrete Samples over a range of n =64 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');

figure(4)
subplot(2,2,1); stem(real(fc4));xlabel('Discrete Samples over a range of n =256 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc4));xlabel('Discrete Samples over a range of n =256 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc4));xlabel('Discrete Samples over a range of n =256 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc4));xlabel('Discrete Samples over a range of n =256 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');

figure(5)
subplot(2,2,1); stem(real(fc5));xlabel('Discrete Samples over a range of n =65536 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); stem(imag(fc5));xlabel('Discrete Samples over a range of n =65536 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); stem(angle(fc5));xlabel('Discrete Samples over a range of n =65536 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); stem(abs(fc5));xlabel('Discrete Samples over a range of n =65536 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');







t = 0:2:60;
d = 0:2:60;
y = abs(pulstran(t,d,'rectpuls'));
n=-10:1:10;
g=gaussmf(n,[3,0]);
c=conv(y,g,'same');
subplot(2,2,1);
stem(t,y>0)
xlabel('Discrete time samples[n](s)');ylabel('Waveform Magnitude
(a.u.)');
title('Discrete pulse train (comb function)');
grid on
subplot(2,2,2);
stem(n,g,'k');
xlabel('Discrete time samples [n]');ylabel('x[n](a.u.)');
title('Discrete Gaussian Function');
grid on
subplot(2,2,[3,4]);
stem(t,c,'g');
xlabel('Discrete time samples[n](s)');ylabel('Amplitude (a.u.)')

title('convolution of comb function with gaussian function');



