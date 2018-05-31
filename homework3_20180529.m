clear;
close all;

size = 1e3;

V = zeros(1,size);
V(1) = -1;%initialized velocity
X = zeros(1,size);
X(1) = 1;%initialized position
f1 = zeros(1,size);
f2 = zeros(1,size);
f3 = zeros(1,size);
f4 = zeros(1,size);
g1 = zeros(1,size);
g2 = zeros(1,size);
g3 = zeros(1,size);
g4 = zeros(1,size);

h = 0.1;
t = (0:h:size*h);

k = 1;%set
m = 1;%set

for i = 1:size
  f1(i) = -k/m*X(i);
  g1(i) = V(i);
  f2(i) = -k/m*(X(i)+0.5*h*g1(i));
  g2(i) = V(i)-f1(i)*0.5*h;
  f3(i) = -k/m*(X(i)+0.5*h*g2(i));
  g3(i) = V(i)-f2(i)*0.5*h;
  f4(i) = -k/m*(X(i)+h*g3(i));
  g4(i) = V(i)-h*f3(i);
  X(i+1) = X(i)+h*(g1(i) + 2*g2(i) + 2*g3(i) + g4(i))/6;
  V(i+1) = V(i)+h*(f1(i) + 2*f2(i) + 2*f3(i) + f4(i))/6;
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
