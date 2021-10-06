clc
clearvars
% DSP MODULE 3
%Fourier Transform
% 1.a
n=linspace(-10,10,21);
ddf0=logical(dirac(n));ddf1=logical(dirac(n-1));ddf2=logical(dirac(n-2));
f0=fft(ddf0);f1=fft(ddf1);f2=fft(ddf2);
disp(['   FT of del(0)     ','   FT of del(1)     ','   FT of del(2)     '])
disp([f0.',f1.',f2.']);
figure(1)
subplot(2,2,1)
plot (n,real(f0));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Real part of the fourier transform (a.u.) with samples, n')
subplot(2,2,2)
plot (n,imag(f0));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Imaginary part of the fourier transform (a.u.) with samples, n')
subplot(2,2,3) 
plot (n,abs(f0));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Absolute value of the fourier transform (a.u.) with samples, n')
subplot(2,2,4)
plot (n,(atand((imag(f0))./real(f0))));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Phase of the fourier transform (a.u.) with samples, n')
figure(2)
subplot(2,2,1)
plot (n,real(f1));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Real part of the fourier transform (a.u.) with samples, n')
subplot(2,2,2)
plot (n,imag(f1));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Imaginary part of the fourier transform (a.u.) with samples, n')
subplot(2,2,3)
plot (n,abs(f1));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Absolute value of the fourier transform (a.u.) with samples, n')
subplot(2,2,4)
plot (n,(atand((imag(f1))./real(f1))));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Phase of the fourier transform (a.u.) with samples, n')
figure(3)
subplot(2,2,1)
plot (n,real(f2));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Real part of the fourier transform (a.u.) with samples, n')
subplot(2,2,2)
plot (n,imag(f2));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Imaginary part of the fourier transform (a.u.) with samples, n')
subplot(2,2,3)
plot (n,abs(f2));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Absolute value of the fourier transform (a.u.) with samples, n')
subplot(2,2,4)
plot (n,(atand((imag(f2))./real(f2))));grid on;
xlabel('Discrete Samples,n (a.u.)');ylabel('Amplitude (a.u.)');
title('Phase of the fourier transform (a.u.) with samples, n')

%1.b
n=linspace(1,101,100);n6=linspace(1,65,64);n2=linspace(1,102,101);
n7=linspace(1,129,128);n8=linspace(1,257,256);n16=linspace(1,65537,65536);
fs = fft(sin(5*2*pi.*n));fc=fft(cos(5*2*pi.*n));fs2 = fft(sin(5*2*pi.*n2));fc2=fft(cos(5*2*pi.*n2));
fs6 = fft(sin(5*2*pi.*n6));fs7 = fft(sin(5*2*pi.*n7));
fs8 = fft(sin(5*2*pi.*n8));fs16 = fft(sin(5*2*pi.*n16));
figure(1)
subplot(2,2,1); plot(n,real(fs));xlabel('Discrete Samples over a range of n =100 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); plot(n,imag(fs));xlabel('Discrete Samples over a range of n =100 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); plot(n,angle(fs));xlabel('Discrete Samples over a range of n =100 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); plot(n,abs(fs));xlabel('Discrete Samples over a range of n =100 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');
figure(2)
subplot(2,2,1); plot(n2,real(fs2));xlabel('Discrete Samples over a range of n =101 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); plot(n2,imag(fs2));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); plot(n2,angle(fs2));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); plot(n2,abs(fs2));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');
figure(3)
subplot(2,2,1); plot(n,real(fc));xlabel('Discrete Samples over a range of n =100 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); plot(n,imag(fc));xlabel('Discrete Samples over a range of n =100 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); plot(n,angle(fc));xlabel('Discrete Samples over a range of n =100 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); plot(n,abs(fc));xlabel('Discrete Samples over a range of n =100 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');
figure(2)
subplot(2,2,1); plot(n2,real(fc2));xlabel('Discrete Samples over a range of n =101 (a.u.)'); grid on;
ylabel('Amplitude (a.u.)'); title('Real part of the fourier transform (a.u.) with samples, n');
subplot(2,2,2); plot(n2,imag(fc2));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Imaginary part of the fourier transform (a.u.) with samples, n');
subplot(2,2,3); plot(n2,angle(fc2));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Phase of the fourier transform (a.u.) with samples, n');
subplot(2,2,4); plot(n2,abs(fc2));xlabel('Discrete Samples over a range of n =101 (a.u.)');grid on;
ylabel('Amplitude (a.u.)');title('Absolute value of the fourier transform (a.u.) with samples, n');
figure(5)
subplot(2,2,1); plot(n6,fs6);xlabel('Discrete Samples over a range of n =2^6 elements (a.u.)');
ylabel('Amplitude (a.u.)'); title('Fourier transform (a.u.) with samples, n');grid on;
subplot(2,2,2); plot(n7,fs7);xlabel('Discrete Samples over a range of n =2^7 elements (a.u.)');
ylabel('Amplitude (a.u.)'); title('Fourier transform (a.u.) with samples, n');grid on;
subplot(2,2,3); plot(n8,fs8);xlabel('Discrete Samples over a range of n =2^8 elements (a.u.)');
ylabel('Amplitude (a.u.)'); title('Fourier transform (a.u.) with samples, n');grid on;
subplot(2,2,4); plot(n16,fs16);xlabel('Discrete Samples over a range of n =2^1^6 elements (a.u.)');
ylabel('Amplitude (a.u.)'); title('Fourier transform (a.u.) with samples, n');grid on;


%1.c
t=(-10:1:10);y = rectpuls(t,10); 
disp(['Rectangular Pulse,t ', ' Fourier Transform of t']);
disp([y.',fft(y).']);
plot(t,(abs(fftshift((fft(y))))));xlabel('Discrete Samples, n');
ylabel('Amplitude of Fourier Transsform of Discrete Rectangular Pulse(a.u.)');
title('Absolute Fourier transform of Discrete Rectangular Pulse vs samples'); grid on 


%2.b
clc
clear all
close all

x= [1 2 3 4];n=4;N=25;
tic
if(N>length(x))
    for i=1:N-length(x)
        x=[x 0];
    end
end
X=[];xx=0;
for k=0:N-1
    for n=0:N-1
        xx=xx+x(n+1)* exp(-j*2*pi*n*k/N);
    end
    X=[X xx];xx=0;
end
toc
tic
Y = fft(x);
toc
disp(Y)

%3
ar = 1:25;
z= ar.*0;
o=ar./ar;
u=[z,o];
for n = 1:25
x = (2.^n).*u;
f = fft(x);
end
disp(f);

%4
for N = 0:7
    TF = exp((-j*2*pi).*N/8);
    disp(TF);
end