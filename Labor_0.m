%Labor 0 
%Milan Daniel Larsen 581829
% Dany Karel Kenfack Nguemo 571705

% 0.1 Rechnen mit Vektoren
%a
z=1:6;
s=(12:-2:2)'; %Zeilenvektor transponieren 
%b
c=dot(z,s);
prod=dot(s,z); % So macht man es eigentlich richtig 
prod=s*z; %falsch berechnet -.-
 % Sie weichen nicht ab ...
%d
r=s.*transpose(z);
r(2)=11;

mittel=mean(prod*r);

%%
%0.2 Rechnen mit Matrizen und zufallszahlen
%a
M=[1 2 3; 
    4 5 6 ;
    7 8 9]
%b
M(1,3)=10;
%c
R=rand(3,3)*100;
Z=R*M;
Zmin=min(Z,[],'all');
Zmean=mean(Z,'all');
Zmax=max(Z,[],'all');


%% 
% Subsktiption
x=(100:199)'
y=x(end-4:end);
z=x(1:5);
m=x(5:9);
a=[y,z,m];
p=sum(a,2);
mittle=mean(p);

%% 
%Plot
close all
x=(-2:0.1:2)';
y=x.^2;
z=x.^3;

plot(x,y,'r',x,z,'b');
title("f(x)=y")
grid on
xlabel('x')
ylabel('f(x)')
legend('y','z')
set(gca,'FontSize',15)

figure;
subplot(2,1,1)
plot(x,y,'r');
title('Darstellung f(x)=y und f(x)=z als Subplot')
grid on;
grid on
xlabel('x')
ylabel('y')
set(gca,'FontSize',15)
subplot(2,1,2)
plot(x,z,'b');
grid on;
grid on
xlabel('x')
ylabel('z')
set(gca,'FontSize',15)

figure
stem(x,y,'r');
hold on
stem(x,z,'b')
title("f(x)=y")
grid on
xlabel('x')
ylabel('f(x)')
legend('y','z')
set(gca,'FontSize',15)

figure;
subplot(2,1,1)
stem(x,y,'r');
title('Darstellung f(x)=y und f(x)=z als Subplot')
grid on;
grid on
xlabel('x')
ylabel('y')
set(gca,'FontSize',15)
subplot(2,1,2)
stem(x,z,'b');
grid on;
grid on
xlabel('x')
ylabel('z')
set(gca,'FontSize',15)

%%
%Funktionsdarstellung
x=linspace(-1,5,1000);
y=exp(-(x-2).^2);
plot(x,y,'b')
title('Gausverteilung')
xlabel('X')
ylabel('y(x)')
grid on
legend('$f(x)=e^{-(x-2)^2}$','Interpreter','latex')
set(gca,'FontSize',15)

%%
% 0.6 Kontrollflussanweisung
clear all;
prompt='Enter Vector:';
x = input(prompt);
% xorg=x;
% min=0;
% max=0;
% temp=0;
% swapped=true;
% n=size(x);
% 
% while swapped
% swapped=false;
% for i=1:n(2)-1
%     if (x(i)>x(i+1))
%         temp=x(i+1);
%         x(i+1)=x(i);
%         x(i)=temp;
%         swapped=true;
%     end
%   min=x(1);
%   max=x(end);
% end
% 
% for i=1:n(2)-1
%     if(min==xorg(i))
%         minI=i;
%     end
%     if(max==xorg(i))
%         maxI=i;
%     end
% end
% end
% input=['Vektor eingegeben: ', '[',num2str(xorg),'}' ];
% disp(input)
% leng=['Vektorlänge: ', num2str(n(2))];
% disp(leng)
% maxstr=['Maximalwert: ', num2str(max),' an Position ',num2str(maxI)];
% disp(maxstr)
% minstr=['Minimalwert: ', num2str(min),' an Position ',num2str(minI)];
% disp(minstr)

MinMax(x);