clear;
close all;

figure;
set(gcf,'Renderer','OpenGL');

for t=0:0.05:2*pi;
  x=sin(t)*10;
  y=cos(t)*10;
  plot(t,x,'bp','MarkerSize',30,t,y,'rx','MarkerSize',30);
  xlim([0 2*pi]);
  ylim([-10 10]);
  grid on;
  drawnow
end
