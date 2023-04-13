function y = OdometryMeasurementFcn(x)
% gpsMeasurementFcn GPS measurement function for state estimation
%
% Assume the states x are:
%   [x y theta]

%#codegen

% The %#codegen tag above is needed is you would like to use MATLAB Coder to 
% generate C or C++ code for your filter

y = [x(1), x(2), x(3)] ; % Position states are measured
end