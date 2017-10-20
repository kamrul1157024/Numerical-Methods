format long;
lo=input('lower guess');
hi=input('higer guess');
e=input('error limit');
old=0;
for i=1:100
   mid=(lo+hi)/2;
    if f(mid)*f(hi)<0
        lo=mid;
    else
       hi=mid;
    end
    er=abs(old-mid)/mid;
    er=er*100;
    if er<=e
        break;
    end
    
    old=mid;
end

disp(i)
disp(mid)
