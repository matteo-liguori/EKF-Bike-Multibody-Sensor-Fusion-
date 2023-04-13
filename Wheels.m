clc
clear

wheelRadius= 0.045;
N = 30;
Ts = 0.01;
CMtoBack = 0.0775;
CMtoFront = 0.15;
theta = [0 : 360/N : 360] * pi/180;
Y = wheelRadius*cos(theta) ;
Z = wheelRadius*sin(theta) ;
X = zeros(size(Y)) ;
pts = [X' Y' Z'];

x_dist = [0:0.1:10]';
waypoint = [x_dist,cos(2*x_dist)*0.2-0.2];
step = [[0:0.1:2]', ones([21 1])]
x2 = [0:0.01:1]';
x3 = ones([size(x2) 1]);
waypoint_step1 = [x2;x3.*1;x2+1];
waypoint_step2 = [x3.*0;x2;x3.*1];
waypoint_step = [waypoint_step1,waypoint_step2];

Jaged = [0,0; 1,0.2; 2,0; 3,-0.2; 3.5,-0.75; 3,-1.5; 3,-2; 3.5,-2.5];