function X = discStateTransitionFcn(X, u)
% X = x, y, theta
x = X(1);
y = X(2);
theta = X(3);

% inputs
v = u(1);
omega = u(2);

% sample time
Ts = 0.01;

% Euler discretisation
X = X + Ts * [v*cos(theta + Ts*omega/2); v* sin(theta + Ts*omega/2); omega];
end

