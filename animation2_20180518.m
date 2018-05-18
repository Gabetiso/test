clear;
close all;
for t=0:0.02:4*pi;
  x=sin(t)*10;
  y=cos(t)*10;
  plot(t,x,'.b',t,y,'.k','MarkerSize',30);
  xlim([0 2*pi]);
  ylim([-10 10]);
  grid on;

  drawnow
end
