function project11
    format long
    i1=round(1020304050607080900^0.5)-mod(round(1020304050607080900^0.5),100)+30;
    i2=round(1020304050607080900^0.5)-mod(round(1020304050607080900^0.5),100)+70;
     has_ans=0;
    while i1^2<=1929394959697989900 && has_ans==0
        if i2^2<=1929394959697989900
            for jj=2:8
               if mod(floor((i2^2)/(10^(2*jj))),10)~=10-jj
                   break;
               end
               if jj==8
                    i2
                    has_ans=1;
               end
            end
            i2=i2+100;
        end
        for jj=2:8
               if mod(floor((i1^2)/(10^(2*jj))),10)~=10-jj
                   break;
               end
               if jj==8
                    i1
                    has_ans=1;
               end
        end
        i1=i1+100;
    end
    if has_ans==0
        disp("no answer");
    end

                
        
            
        