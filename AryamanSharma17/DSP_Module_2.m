clc
clear all
%1.a
n=-10:1:10;
x=heaviside(n+2.5)-heaviside(n-2.5);
c=conv(x,x,'same');
hold on
stem(n,x,'r');
stem(n,c,'k');
hold off
xlabel('Discrete samples n (A.U)'); ylabel('Magnitude of the convolution, (A.U)')
title('x[n] and convolution of x[n] with itself');
grid on
% 2.b
n=-5:1:5;
g=gaussmf(n,[1,0]); 
d=logical(dirac(n-2));
c=conv(g,d,'same');
subplot(2,2,1);
stem(n,g);
xlabel('Discrete time samples [n] (a.u)');ylabel('x[n] (a.u)');
title('Discrete Gaussian Function');grid on
subplot(2,2,2);
stem(n,d,'k');
xlabel('Discrete time samples [n] (a.u)');ylabel('x[n] (a.u)');
title('Shifted Discrete Delta Function');grid on
subplot(2,2,[3,4]);
stem(n,c,'r');
xlabel('Discrete time samples [n] (a.u)');ylabel('Amplitude (a.u)')
title('Convolution of Discrete Gaussian and Shifted Discrete Delta Function');grid on

%2.c
y= [ 0 0 0 1 0 0 0];x= repmat(y, 20);d= x(1,:);
n=-10:1:10;g=gaussmf(n,[1,0]);c=conv(d,g,'same');
subplot(2,2,1);
stem(d)
xlabel('Discrete samples [n]');ylabel('Waveform Amplitude (A.U.)');
title('Discrete pulse train (comb function)');
grid on
subplot(2,2,2);
stem(n,g,'k');
xlabel('Discrete samples [n]');ylabel('x[n](A.U.)');
title('Discrete Gaussian Function');
grid on
subplot(2,2,[3,4]);
stem(c,'b');
xlabel('Discrete samples [n]');ylabel('Waveform Amplitude (A.U.)')
title('convolution of comb function with gaussian function');
grid on
-- 


%3.b
x=[1 2 3];
y=[3 2 1];
res=xcorr(x,y)
stem(res)
xlabel('Vector(Correlation result) length'); ylabel ('Magnitude (a.u.)')
title('Correlation of 2 vectors using xcorr function');
grid on

% As we know r = xcorr(x,y) returns the cross-correlation of two discrete-time sequences. 
%Cross-correlation measures the similarity between a vector x and shifted (lagged) copies 
%of a vector y as a function of the lag. If x and y have different lengths, the function appends
%zeros to the end of the shorter vector so it has the same length as the other.
%Convolution using ‘xcorr’- Convolution using xcorr function is possible along with certain
%limitation. We know from the definition of xcorr function that
%xcorr(x,y)=conv(x,fliplr(y))
%where fliplr(y) returns the flipped version of a certain vector y , it may be any vector x or y ,
%but the limitation is the vector must be two dimensional otherwise the axis of flip need to
%be defined. So we can define the flipped version of the function that we
%want to convolve with the another function and use the xcorr function to flip it again and essentially perform convolution.   
