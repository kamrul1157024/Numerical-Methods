function y =g( x )
R=225;
L=.5;
C=.6e-6;
y=1/((1/(R*R)+(x*C-1/(x*L))^2)^(1/2));
y=y-100;
end

