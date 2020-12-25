function project11(A)
     has_ans=1;
    if A(1)==2|| A(1)==8||A(1)==7|| A(1)==3
         has_ans=0;
    end
    if  has_ans==1
        format long
        target=0;
        for ii=1:10
            target=target+10^((ii-1)*2)*A(ii);
        end
        target_end=target;
        for ii=1:9
            target_end=target_end+9*10^(2*ii-1);
        end
        if A(1)==0
            if A(2)==2|| A(2)==8||A(2)==7|| A(2)==3
                has_ans=0;
            elseif A(2)==4
                has_ans=2;
                if mod(round(target^0.5),100) >20
                    i1=round(target^0.5)-mod(round(target^0.5),100)+120;
                else
                    i1=round(target^0.5)-mod(round(target^0.5),100)+20;
                end              
                if mod(round(target^0.5),100) >80
                    i2=round(target^0.5)-mod(round(target^0.5),100)+180;
                else
                    i2=round(target^0.5)-mod(round(target^0.5),100)+80;
                end
            elseif A(2)==6
                has_ans=2;
                if mod(round(target^0.5),100) >40
                    i1=round(target^0.5)-mod(round(target^0.5),100)+140;
                else
                    i1=round(target^0.5)-mod(round(target^0.5),100)+40;
                end              
                if mod(round(target^0.5),100) >60
                    i2=round(target^0.5)-mod(round(target^0.5),100)+160;
                else
                    i2=round(target^0.5)-mod(round(target^0.5),100)+60;
                end
            elseif A(2)==0
                has_ans=2;
                if mod(round(target^0.5),100) >10
                    i1=round(target^0.5)-mod(round(target^0.5),100)+100;
                else
                    i1=round(target^0.5)-mod(round(target^0.5),100);
                 end
            elseif A(2)==5
                has_ans=2;
                if mod(round(target^0.5),100) >50
                    i1=round(target^0.5)-mod(round(target^0.5),100)+150;
                else
                    i1=round(target^0.5)-mod(round(target^0.5),100)+50;
                end
            elseif A(2)==1
                has_ans=2;
                if mod(round(target^0.5),100) >10
                    i1=round(target^0.5)-mod(round(target^0.5),100)+110;
                else
                    i1=round(target^0.5)-mod(round(target^0.5),100)+10;
                end
                if mod(round(target^0.5),100) >90
                    i2=round(target^0.5)-mod(round(target^0.5),100)+190;
                else
                    i2=round(target^0.5)-mod(round(target^0.5),100)+90;
                end
            elseif A(2)==9
                has_ans=2;
                if mod(round(target^0.5),100) >30
                    i1=round(target^0.5)-mod(round(target^0.5),100)+130;
                else
                    i1=round(target^0.5)-mod(round(target^0.5),100)+30;
                end
                if mod(round(target^0.5),100) >70
                    i2=round(target^0.5)-mod(round(target^0.5),100)+170;
                else
                    i2=round(target^0.5)-mod(round(target^0.5),100)+70;
                end
            end
            if has_ans==2
                if A(2)==0||A(2)==5
                    while i1^2<=target_end&& has_ans~=1
                        for  ii=3:9
                            if mod(floor((i1 ^2)/(10^(2*(ii-1)))),10)~=A(ii)
                                break
                            end
                            if ii==9
                                has_ans=1;
                                disp([num2str(i1),' is root of',num2str(i1^2)]);
                            end
                        end
                        i1=i1+100;
                    end
                else
                    while i1^2<=target_end&& has_ans~=1
                        for  ii=3:9
                            if mod(floor((i1^2)/(10^(2*(ii-1)))),10)~=A(ii)
                                break
                            end
                            if ii==9
                                has_ans=1;
                                disp([num2str(i1),' is root of',num2str(i1^2)]);
                            end
                        end
                        if has_ans~=1
                            for  ii=3:9
                                if mod(floor((i2^2)/(10^(2*(ii-1)))),10)~=A(ii)
                                    break
                                end
                                if ii==9
                                    has_ans=1;
                                    disp([num2str(i2),' is root of',num2str(i2^2)]);
                                end
                            end
                        end
                        i1=i1+100;
                        i2=i2+100;
                    end
                end
            end
        elseif A(1)==5
            if mod(round(target^0.5),10) >5
                i1=round(target^0.5)-mod(round(target^0.5),100)+15;
            else
                i1=round(target^0.5)-mod(round(target^0.5),10)+5;
            end
            has_ans=2;
            while i1^2<=target_end&&has_ans~=1
                for  ii=2:9
                    if mod(floor((i1^2)/(10^(2*(ii-1)))),10)~=A(ii)
                        break
                    end
                    if ii==9
                        has_ans=1;
                        disp([num2str(i1),' is root of',num2str(i1^2)]);
                    end
                end
                i1=i1+10;
            end
        elseif A(1)==1
            has_ans=2;
            if mod(round(target^0.5),10) >1
                i1=round(target^0.5)-mod(round(target^0.5),10)+11;
            else
                i1=round(target^0.5)-mod(round(target^0.5),10)+1;
            end
            if mod(round(target^0.5),10) >9
                i2=round(target^0.5)-mod(round(target^0.5),10)+19;
            else
                i2=round(target^0.5)-mod(round(target^0.5),10)+9;
            end
            while i1^2<=target_end&& has_ans~=1
                for  ii=2:9
                    if mod(floor((i1^2)/(10^(2*(ii-1)))),10)~=A(ii)
                        break
                    end
                    if ii==9
                        has_ans=1;
                        disp([num2str(i1),' is root of',num2str(i1^2)]);
                    end
                 end
                 if has_ans~=1
                    for  ii=2:9
                        if mod(floor((i2^2)/(10^(2*(ii-1)))),10)~=A(ii)
                            break
                        end
                        if ii==9
                            has_ans=1;
                            disp([num2str(i2),' is root of',num2str(i2^2)]);
                        end
                    end
                 end
                 i1=i1+10;
                 i2=i2+10;
            end
        elseif A(1)==4
            has_ans=2;
            if mod(round(target^0.5),10) >2
                i1=round(target^0.5)-mod(round(target^0.5),10)+12;
            else
                i1=round(target^0.5)-mod(round(target^0.5),10)+2;
            end
            if mod(round(target^0.5),10) >8
                i2=round(target^0.5)-mod(round(target^0.5),10)+18;
            else
                i2=round(target^0.5)-mod(round(target^0.5),10)+8 ;
            end
            while i1^2<=target_end&& has_ans~=1
                for  ii=2:9
                    if mod(floor((i1^2)/(10^(2*(ii-1)))),10)~=A(ii)
                        break
                    end
                    if ii==9
                        has_ans=1;
                        disp([num2str(i1),' is root of',num2str(i1^2)]);
                    end
                 end
                 if has_ans~=1
                    for  ii=2:9
                        if mod(floor((i2^2)/(10^(2*(ii-1)))),10)~=A(ii)
                            break
                        end
                        if ii==9
                            has_ans=1;
                            disp([num2str(i2),' is root of',num2str(i2^2)]);
                        end
                    end
                 end
                 i1=i1+10;
                 i2=i2+10;
            end
        elseif A(1)==6
            has_ans=2;
            if mod(round(target^0.5),10) >4
                i1=round(target^0.5)-mod(round(target^0.5),10)+14;
            else
                i1=round(target^0.5)-mod(round(target^0.5),10)+4;
            end
            if mod(round(target^0.5),10) >6
                i2=round(target^0.5)-mod(round(target^0.5),10)+16;
            else
                i2=round(target^0.5)-mod(round(target^0.5),10)+6 ;
            end
            while i1^2<=target_end&& has_ans~=1
                for  ii=2:9
                    if mod(floor((i1^2)/(10^(2*(ii-1)))),10)~=A(ii)
                        break
                    end
                    if ii==9
                        has_ans=1;
                        disp([num2str(i1),' is root of',num2str(i1^2)]);
                    end
                 end
                 if has_ans~=1
                    for  ii=2:9
                        if mod(floor((i2^2)/(10^(2*(ii-1)))),10)~=A(ii)
                            break
                        end
                        if ii==9
                            has_ans=1;
                            disp([num2str(i2),' is root of',num2str(i2^2)]);
                        end
                    end
                 end
                 i1=i1+10;
                 i2=i2+10;
            end
        elseif A(1)==9
            has_ans=2;
            if mod(round(target^0.5),10) >3
                i1=round(target^0.5)-mod(round(target^0.5),10)+13;
            else
                i1=round(target^0.5)-mod(round(target^0.5),10)+3;
            end
            if mod(round(target^0.5),10) >7
                i2=round(target^0.5)-mod(round(target^0.5),10)+17;
            else
                i2=round(target^0.5)-mod(round(target^0.5),10)+7 ;
            end
            while i1^2<=target_end&& has_ans~=1
                for  ii=2:9
                    if mod(floor((i1^2)/(10^(2*(ii-1)))),10)~=A(ii)
                        break
                    end
                    if ii==9
                        has_ans=1;
                        disp([num2str(i1),' is root of',num2str(i1^2)]);
                    end
                 end
                 if has_ans~=1
                    for  ii=2:9
                        if mod(floor((i2^2)/(10^(2*(ii-1)))),10)~=A(ii)
                            break
                        end
                        if ii==9
                            has_ans=1;
                            disp([num2str(i2),' is root of',num2str(i2^2)]);
                        end
                    end
                 end
                 i1=i1+10;
                 i2=i2+10;
            end
        end
    end
    if has_ans~=1
        disp("no answer");
    end