%data encrypting
%created by Aman raj
%software used MLAB2013a
%must be done only with .bmp format of image
msg='JAIL BREAK';%must be in capital, 10 words max including space
count=length(msg);
c=count-1;
fibo=[1,2];
i=3;
while(c>0)
    fibo(i)=fibo(i-1)+fibo(i-2);
    c=c-1;
    i=i+1;
end 
%fibo
enc=[length(msg)];
j=1;
o=2;
%get euivalent ASCII value
while(length(enc)<count+1)
    if msg(j)=='A'
        enc(o)=65;
    elseif msg(j)=='B'
        enc(o)=66;
    elseif msg(j)=='C'
        enc(o)=67;
    elseif msg(j)=='D'
        enc(o)=68;
    elseif msg(j)=='E'
        enc(o)=69;
    elseif msg(j)=='F'
        enc(o)=70;
    elseif msg(j)=='G'
        enc(o)=71;
    elseif msg(j)=='H'
        enc(o)=72;
    elseif msg(j)=='I'
        enc(o)=73;
    elseif msg(j)=='J'
        enc(o)=74;
    elseif msg(j)=='K'
        enc(o)=75;
    elseif msg(j)=='L'
        enc(o)=76;
    elseif msg(j)=='M'
        enc(o)=77;
    elseif msg(j)=='N'
        enc(o)=78;
    elseif msg(j)=='O'
        enc(o)=79;
    elseif msg(j)=='P'
        enc(o)=80;
    elseif msg(j)=='Q'
        enc(o)=81;
    elseif msg(j)=='R'
        enc(o)=82;
    elseif msg(j)=='S'
        enc(o)=83;
    elseif msg(j)=='T'
        enc(o)=84;
    elseif msg(j)=='U'
        enc(o)=85;
    elseif msg(j)=='V'
        enc(o)=86;
    elseif msg(j)=='W'
        enc(o)=87;
    elseif msg(j)=='X'
        enc(o)=88;
    elseif msg(j)=='Y'
        enc(o)=89;
    elseif msg(j)=='Z'
        enc(o)=90;
    else
        enc(o)=32;
    end
    j=j+1;
    o=o+1;
end   
%read an image file
im=imread('C:\Users\chefaman\Pictures\testimg.bmp');
l=1;
%write it on image
for k=fibo;
    im(k,k,1)=enc(l);
    l=l+1;
end
imwrite(im,'C:\Users\chefaman\Pictures\set1.bmp');
