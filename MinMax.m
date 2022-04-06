function [] = MinMax(x)
%MINMAX Summary of this function goes here
%   Detailed explanation goes here
xorg=x;
min=0;
max=0;
temp=0;
swapped=true;
n=size(x);

while swapped
swapped=false;
for i=1:n(2)-1
    if (x(i)>x(i+1))
        temp=x(i+1);
        x(i+1)=x(i);
        x(i)=temp;
        swapped=true;
    end
  min=x(1);
  max=x(end);
end

for i=1:n(2)-1
    if(min==xorg(i))
        minI=i;
    end
    if(max==xorg(i))
        maxI=i;
    end
end
end
input=['Vektor eingegeben: ', '[',num2str(xorg),'}' ];
disp(input)
leng=['Vektorlänge: ', num2str(n(2))];
disp(leng)
maxstr=['Maximalwert: ', num2str(max),' an Position ',num2str(maxI)];
disp(maxstr)
minstr=['Minimalwert: ', num2str(min),' an Position ',num2str(minI)];
disp(minstr)
end

