
THD=[0 0.002758 0.002762 0.002863 0.003031 0.003276 0.003629 0.004092 ...
    0.004685 0.005416 0.006296 0.007318 0.008486 0.009794 0.011261 ...
    0.012838 0.014504 0.016280 0.018171 0.020209 0.022397 0.024735 ...
    0.027231 0.029876 0.032664 0.035632 0.038786 0.042148 0.045700 ...
    0.049462 0.053492 0.077927 0.112221 0.161231 0.231009 0.330320 0.472842 ...
    0.679872 0.988569 1.456334 2.148056 3.103586 4.258724 5.451135 ...
    6.571847 7.561167 8.397123 9.060984 9.574673];

freq=[0:1000:30000, 35000:5000:120000 ];

%Close images.
close all;

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create area
area(freq,THD,'FaceColor',[0.678431391716003 0.921568632125854 1]);

% Create ylabel
ylabel('Distorsi�n arm�nica total (THD) [%]');

% Create xlabel
xlabel('Frecuencia [Hz]');

% Create title
title('THD en funci�n de frecuencia a m�xima potencia de salida (60W)');

% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0 0.003]);
box(axes1,'on');
% Set the remaining axes properties
% set(axes1,'XGrid','on','XMinorTick','on','XTick',...
%     [0 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000 65000 70000 75000 80000 85000 90000 95000 100000 105000 110000 115000 120000],...
%     'YGrid','on','YMinorTick','on','YTick',...
%     [0 0.25 0.5 0.75 1 1.25 1.5 1.75 2 2.25 2.5 2.75 3 3.25 3.5 3.75 4 4.25 4.5 4.75 5 5.25 5.5 5.75 6 6.25 6.5 6.75 7 7.25 7.5 7.75 8 8.25 8.5 8.75 9 9.25 9.5 9.75 10]);
set(axes1,'XGrid','on','XMinorTick','on','XTick',...
    [0 2500 5000 7500 10000 12500 15000 17500 20000 22500 25000 27500 30000 32500 35000 37500 40000 42500 45000 47500 50000 52500 55000 57500 60000 62500 65000 67500 70000 72500 75000 77500 80000 82500 85000 87500 90000 92500 95000 97500 100000 102500 105000 107500 110000 112500 115000 117500 120000],...
    'YGrid','on','YMinorTick','on','YTick',...
    [0 0.25 0.5 0.75 1 1.25 1.5 1.75 2 2.25 2.5 2.75 3 3.25 3.5 3.75 4 4.25 4.5 4.75 5 5.25 5.5 5.75 6 6.25 6.5 6.75 7 7.25 7.5 7.75 8 8.25 8.5 8.75 9 9.25 9.5 9.75 10]);


axes1.YAxis.Exponent = 0;

axes1.XAxis.Exponent = 3;