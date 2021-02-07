%% Plot of ECC Test for all real number
clear all
close all
clc
p=117;  % choose any value to find the x and y in range of -p to p. 


val_a_b=[];
for a=-10:30
    for b=0:30
        if 4*a^3+27*b^2~=0   % Find the value of a and b in the
            val=[a b];       % specified range, these values satisfy the 
            val_a_b=[val_a_b; val];   %  condition of 4*a^3+27*b^2~=0 
        else                        
        end
    end
end

for jj=104 %1:length(val_a_b)  % the value corrsponding to jj=104 have maximum 
    a=val_a_b(jj,1);           % value of x and y on EC curve.
    b=val_a_b(jj,2);
eccpoint=[];
i=1;
for x=-p:1:p
    for y=-p:1:p
        if (y^2)==((x^3)+a*x+b)
            eccpoint(i,:)=[x y]; % all points on EC curve for the given value of a and b
            i=i+1;
        else
        end
    end
end
end
x=eccpoint(:,1);
y=eccpoint(:,2);
plot(x,y,'ro','MarkerFaceColor','g','MarkerSize',10)
% xlim([1 p]);
% ylim([1 p]);
% set(gca,'XTick',0:length(x))
% set(gca,'YTick',0:length(x))
grid on;
hold on

% Multiplication Test
N=54; %Any number to be multiplied with point on EC curve.
P1=[-3 -2];  % choose any two point from above given points
P2=[-1 -4];
% Q=[155 155];    % choose any point either on the curve or other different point 
% R=Ptadd_Ec(P,Q,a);
R1=ptmulti(P1,N,a);
R2=ptmulti(P2,N,a);
plot(R1(1), R1(2),'bo','MarkerFaceColor','r','MarkerSize',10)
plot(R2(1), R2(2),'bo','MarkerFaceColor','b','MarkerSize',10)
legend('Eliptical curve plot', 'Point N*P1 on the curve', 'Point N*P2 on the curve')


