x1=input('Initial guess');
elimit=input('Error limit');
for i=1:1000
    if diffz(x1)==0
        disp('root not found')
        break;
    end
    x2=x1-(z(x1)/diffz(x1));
    
    er=abs((x2-x1)/x2);
    er=er*100;
    
    if z(x1)==0 || er<=elimit||i==999
        disp('Iteration:')
        disp(i)
        disp('root')
        disp(x2)
        break;
    end
    x1=x2;
end