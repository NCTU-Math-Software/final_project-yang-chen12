function rootFinding
    format long
    has_ans=0;
    i1=round(1020304050607080900^0.5)-mod(round(1020304050607080900^0.5),100)+30;
    i2=round(1020304050607080900^0.5)-mod(round(1020304050607080900^0.5),100)+70;
    while i1^2<1929394959697989900 && has_ans~=1
        for jj=2:8
            if mod(floor((i1^2)/(10^(2*(jj)))),10)~=10-jj
                break;
            end
            if jj==8
                ans=i1;
                has_ans=1;
                num=[];
                for ii=1:10
                    k=mod(floor(i1/(10)^(10-ii)),10);
                    num=[num,k];
                end
                target=[];
                target(1:19)=0;
                for ii=1:10
                    for kk=1:10
                        target(kk+ii-1)=target(kk+ii-1)+num(kk)*num(ii);
                        ll=kk+ii-1;
                        while target(ll)>=10
                            target(ll-1)=target(ll-1)+floor(target(ll)/10);
                            target(ll)=mod(target(ll),10);
                            ll=ll-1;
                            if ll==0
                                ll=1;
                            end
                        end
                    end
                end
                for ii=2:8
                    if target(2*ii-1)~=ii
                        has_ans=0;
                        break;
                    end
                end
            end
        end        
        if has_ans~=1
            for jj=2:8
                if mod(floor((i2^2)/(10^(2*(jj)))),10)~=10-jj
                    break;
                end
                if jj==8
                    ans=i2;
                    has_ans=1;
                    num=[];
                    for ii=1:10
                        k=mod(floor(i2/(10)^(10-ii)),10);
                        num=[num,k];
                    end
                    target=[];
                    target(1:19)=0;
                    for ii=1:10
                        for kk=1:10
                            target(kk+ii-1)=target(kk+ii-1)+num(kk)*num(ii);
                            ll=kk+ii-1;
                            while target(ll)>=10
                                target(ll-1)=target(ll-1)+floor(target(ll)/10);
                                target(ll)=mod(target(ll),10);
                                ll=ll-1;
                                if ll==0
                                    ll=1;
                                end
                            end
                        end
                    end
                    for ii=2:8
                        if target(2*ii-1)~=ii
                            has_ans=0;
                            break;
                        end
                    end
                end
            end 
        end
        i1=i1+100;
        i2=i2+100;
    end
    if has_ans==0
        disp("no answer");
    else
        target_str="";
        num_str="";
        for kk=1:19
            target_str=target_str+num2str(target(kk));
        end
        for kk=1:10
            num_str=num_str+num2str(num(kk));
        end
        lin=num2str(ans)+"  is root of "+target_str;
        disp(lin)

    end