clear;
close all;

size = 1e2;

V = zeros(1,size);
V(1) = -1;
X = zeros(1,size);
X(1) = 1;
f1 = zeros(1,size);
f2 = zeros(1,size);
g1 = zeros(1,size);
g2 = zeros(1,size);

h = 0.1;
t = (0:h:size*h);

k = 1;
m = 1;

for i = 1:size
  f1(i) = -k/m*X(i);
  g1(i) = V(i);
  f2(i) = -k/m*(X(i)+V(i)*h);
  g2(i) = V(i)-k/m*X(i)*h;
  X(i+1) = X(i)+h*(g1(i) + g2(i))/2;
  V(i+1) = V(i)+h*(f1(i) + f2(i))/2;
end

figure;

subplot(1,2,1);
plot(t,X,t,V);
xlabel('t');
ylabel('x,v');
legend('t-x','t-v');
ax = gca;
ax.FontName = 'Times New Roman';
ax.FontSize = 16;
grid on;
grid minor;

subplot(1,2,2);
plot(X,V);
xlabel('x');
ylabel('v');
legend('x-v');
ax = gca;
ax.FontName = 'Times New Roman';
ax.FontSize = 16;
grid on;
grid minor;
%saveas(gcf,'t-x.png')
