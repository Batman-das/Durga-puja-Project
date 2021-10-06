clear
clc
z= zeros(50);
o=ones(50);
unit_step=[z;o];
title("Unit Step Function");
xlabel("Discrete Samples, n");
ylabel("Data Sequence"); 
stem(unit_step);
