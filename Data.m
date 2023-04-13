

dt = seconds(0.005);

% ESTIMATES STATE
% Single Sensor Pose
E_F_angle = retime(timeseries2timetable(out.E_other.FW_Estimated.F_angle_E),"regular","linear","TimeStep",dt);
E_F_angle_dot = retime(timeseries2timetable(out.E_other.FW_Estimated.F_angle_dot_E),"regular","linear","TimeStep",dt);

E_RW_angle = retime(timeseries2timetable(out.E_other.RW_Estimated.RW_angle_E),"regular","linear","TimeStep",dt);
E_RW_angle_dot = retime(timeseries2timetable(out.E_other.RW_Estimated.RW_angle_dot_E),"regular","linear","TimeStep",dt);

E_L_angle = retime(timeseries2timetable(out.E_other.Lean_Estimated.L_angle_E),"regular","linear","TimeStep",dt);
E_L_angle_dot = retime(timeseries2timetable(out.E_other.Lean_Estimated.L_angle_dot_E),"regular","linear","TimeStep",dt);
% fusion EKF
E_EKF_V_x = retime(timeseries2timetable(out.E_pose.Pose_EKF.V_x_E),"regular","linear","TimeStep",dt);
E_EKF_V_y = retime(timeseries2timetable(out.E_pose.Pose_EKF.V_y_E),"regular","linear","TimeStep",dt);
E_EKF_V_o = retime(timeseries2timetable(out.E_pose.Pose_EKF.V_orient_E),"regular","linear","TimeStep",dt);
% fusion WA
E_WA_V_x = retime(timeseries2timetable(out.E_pose.Pose_Weighted_Average.V_x_E),"regular","linear","TimeStep",dt);
E_WA_V_y = retime(timeseries2timetable(out.E_pose.Pose_Weighted_Average.V_y_E),"regular","linear","TimeStep",dt);
E_WA_V_o = retime(timeseries2timetable(out.E_pose.Pose_Weighted_Average.V_orient_E),"regular","linear","TimeStep",dt);
% fusion IMU
E_IMU_V_x = retime(timeseries2timetable(out.E_pose.Pose_IMU.V_x_E),"regular","linear","TimeStep",dt);
E_IMU_V_y = retime(timeseries2timetable(out.E_pose.Pose_IMU.V_y_E),"regular","linear","TimeStep",dt);
E_IMU_V_o = retime(timeseries2timetable(out.E_pose.Pose_IMU.V_orient_E),"regular","linear","TimeStep",dt);
% fusion Od
E_Od_V_x = retime(timeseries2timetable(out.E_pose.Pose_Odometry.V_x_E),"regular","linear","TimeStep",dt);
E_Od_V_y = retime(timeseries2timetable(out.E_pose.Pose_Odometry.V_y_E),"regular","linear","TimeStep",dt);
E_Od_V_o = retime(timeseries2timetable(out.E_pose.Pose_Odometry.V_orient_E),"regular","linear","TimeStep",dt);


% GROUND TRUTH STATE

G_F_angle = retime(timeseries2timetable(out.Ground_Truth.F_state_G.F_angle),"regular","linear","TimeStep",dt);
G_F_angle_dot = retime(timeseries2timetable(out.Ground_Truth.F_state_G.F_angle_dot),"regular","linear","TimeStep",dt);

G_RW_angle = retime(timeseries2timetable(out.Ground_Truth.RW_states_G.RW_angle),"regular","linear","TimeStep",dt);
G_RW_angle_dot = retime(timeseries2timetable(out.Ground_Truth.RW_states_G.RW_angle_dot),"regular","linear","TimeStep",dt);

G_L_angle = retime(timeseries2timetable(out.Ground_Truth.L_state_G.L_angle),"regular","linear","TimeStep",dt);
G_L_angle_dot = retime(timeseries2timetable(out.Ground_Truth.L_state_G.L_angle_dot),"regular","linear","TimeStep",dt);

G_V_x = retime(timeseries2timetable(out.Ground_Truth.V_Pose_G.V_x),"regular","linear","TimeStep",dt);
G_V_y = retime(timeseries2timetable(out.Ground_Truth.V_Pose_G.V_y),"regular","linear","TimeStep",dt);
G_V_o = retime(timeseries2timetable(out.Ground_Truth.V_Pose_G.V_Orient),"regular","linear","TimeStep",dt);

% Error 

Errors = retime(timeseries2timetable(out.Errors),"regular","linear","TimeStep",dt);
Euclid_distance = retime(timeseries2timetable(out.Edclid_Distance),"regular","linear","TimeStep",dt);

E_state = synchronize(E_F_angle, E_F_angle_dot, E_RW_angle, E_RW_angle_dot, E_L_angle, E_L_angle_dot);
E_P_EKF = synchronize(E_EKF_V_x, E_EKF_V_y, E_EKF_V_o); 
E_P_WA = synchronize(E_WA_V_x, E_WA_V_y, E_WA_V_o);
E_P_IMU = synchronize(E_IMU_V_x, E_IMU_V_y, E_IMU_V_o); 
E_P_Od = synchronize(E_Od_V_x, E_Od_V_y, E_Od_V_o);

Encoder = retime(timeseries2timetable(out.simout),"regular","linear","TimeStep",dt);
Full_Estimated_State= synchronize(E_state, E_P_EKF, E_P_WA, E_P_IMU, E_P_Od)

GT_state = synchronize(G_F_angle, G_F_angle_dot, G_RW_angle, G_RW_angle_dot, G_L_angle, G_L_angle_dot, G_V_x, G_V_y, G_V_o)
Errors = synchronize(Errors,Euclid_distance)




























