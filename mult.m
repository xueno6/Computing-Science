function [val]=mult(x,y,i,j)
% aim: to get <u,v> value
% input: x,y, are the arraies of the data
%        i,j mean x^i, or x^j
% precondition: i,j are only 0 1 2
% output: val=<u,v>
s=0;
for k=1:21
    s=s+x(k)^(i+j);
end
val=s;
