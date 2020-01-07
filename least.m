warning off
x=0:0.5:10;
y=[2.9,2.7,4.8,5.3,7.1,7.6,7.7,7.6,9.4,9.0,9.6,10.0,10.2,9.7,8.3,8.4,9.0,8.3,6.6,6.7,4.1];
G=zeros(3,3);
for i=1:3
    for j=1:3
        G(i,j)=mult(x,x,i-1,j-1);
    end
end
c=zeros(3,1);
s=0;
c(1)=sum(y);
for i=1:21
    s=s+y(i)*x(i);
end
c(2)=s;
s=0;
for i=1:21
    s=s+y(i)*x(i)*x(i);
end
c(3)=s;
a=inv(G)*c;
disp(a)
