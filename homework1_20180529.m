clear;
close all;

size = 1e4;

V = zeros(1,size);
V(1) = -1;
X = zeros(1,size);
X(1) = 1;

h = 0.1;
t = (0:h:100);

k = 1;
m = 1;

for i = 1:size
  X(i+1) = X(i) + h*V(i);
  V(i+1) = V(i) - k/m*h*X(i);
end

figure;
plot(t,X,t,V);
xlabel('t');
ylabel('x or v');
legend('t-x');
ax = gca;
ax.FontName = 'Times New Roman';
ax.FontSize = 16;
grid on;
grid minor;
%saveas(gcf,'t-x.png')
