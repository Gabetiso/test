clear;
close all;

t = 0:0.001:1;   % Time data
x = sin(2*pi*t); % Position data

% Draw initial figure
figure;
set(gcf,'Renderer','OpenGL'); %gcfは現在のfigureハンドル
h = plot(x(1),0,'o','MarkerSize',20,'MarkerFaceColor','b');%oはマーカーの形
xlim([-1.5,1.5]);
ylim([-1.5,1.5]);

% Animation Loop
i = 1;
while i<=length(x)
    set(h,'XData',x(i));%hで指定されたXData(名前)にx(i)という値を入れる
    drawnow;
    i = i+1;
end
