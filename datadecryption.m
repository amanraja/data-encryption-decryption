%data decryption
%created by Aman raj
im=imread('C:\Users\chefaman\Pictures\set1.bmp');
lenofdata=im(1,1,1);
newf=[2,3];
t=3;
while(lenofdata-2>0)
    newf(t)=newf(t-1)+newf(t-2);
    lenofdata=lenofdata-1;
    t=t+1;
end 
dec=[];
d=1;
for r=newf;
    dec(d)=im(r,r,1);
    d=d+1;
end
actmsg='';
v=1;
z=1;
while(v-1<im(1,1,1))
    if dec(z)==65;
        actmsg(v)='A';
    elseif dec(z)==66;
        actmsg(v)='B';
    elseif dec(z)==67;
        actmsg(v)='C';
    elseif dec(z)==68;
        actmsg(v)='D';
    elseif dec(z)==69;
        actmsg(v)='E';
    elseif dec(z)==70;
        actmsg(v)='F';
    elseif dec(z)==71;
        actmsg(v)='G';
    elseif dec(z)==72;
        actmsg(v)='H';
    elseif dec(z)==73;
        actmsg(v)='I';
    elseif dec(z)==74;
        actmsg(v)='J';
    elseif dec(z)==75;
        actmsg(v)='K';
    elseif dec(z)==76;
        actmsg(v)='L';
    elseif dec(z)==77;
        actmsg(v)='M';
    elseif dec(z)==78;
        actmsg(v)='N';
    elseif dec(z)==79;
        actmsg(v)='O';
    elseif dec(z)==80;
        actmsg(v)='P';
    elseif dec(z)==81;
        actmsg(v)='Q';
    elseif dec(z)==82;
        actmsg(v)='R';
    elseif dec(z)==83;
        actmsg(v)='S';
    elseif dec(z)==84;
        actmsg(v)='T';
    elseif dec(z)==85;
        actmsg(v)='U';
    elseif dec(z)==86;
        actmsg(v)='V';
    elseif dec(z)==87;
        actmsg(v)='W';
    elseif dec(z)==88;
        actmsg(v)='X';
    elseif dec(z)==89;
        actmsg(v)='Y';
    elseif dec(z)==90;
        actmsg(v)='Z';
    else
        actmsg(v)=' ';
    end
    v=v+1;
    z=z+1;
end 
fprintf('ACTUAL MSG IS = "%s"',actmsg);
