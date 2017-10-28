format long
x1=input('Input the lower guess');
x2=input('input the upper guess');
elimit=input('Input error limit');
old=0;
for i=1:1000
    x3=(x1*g(x2)-x2*g(x1))/(g(x2)-g(x1));
    if g(x1)*g(x3)<0
        x2=x3;
    else
        x1=x3;
    end
    
    err=abs((x3-old)/(x3));
    err=err*100;
    old=x3;
    if g(x3)==0 || err<=elimit 
        break;
    end
    
end

disp('Number of iteration:');
disp(i);
disp('Root is :')
disp(x3);
