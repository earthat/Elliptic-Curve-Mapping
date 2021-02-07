clear all
close all
clc
%Plot of ECC Test
p=123457;
a=5376;
b=2438;
i=1;
eccpoints_all=[];
for x=1:p
    for y=1:p
        if mod(y^2,p)==mod((x^3+a*x+b),p)
            eccpoints_all(i,:)=[x y];
            i=i+1;
        else
        end
    end
end
save eccpoints_all eccpoints_all
% x=eccpoint(:,1);
% y=eccpoint(:,2);
% % x=linspace(-3,3,200);
% plot(x,y,'ro','MarkerFaceColor','g','MarkerSize',10)
% xlim([1 p]);
% ylim([1 p]);
% % set(gca,'XTick',0:length(x))
% % set(gca,'YTick',0:length(x))
% grid on;

% %% Addition Test
% clear all
% close all
% clc
% p=11;
% P=[8 3];  Q=[3 5];
% num=(Q(2)-P(2));
% denom=(Q(1)-P(1));
% % denom=modInv(den,p);
% slope=num/denom;


