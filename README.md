## Individual-Engineering-Project-Comparative-Analysis-of-Sensor-Fusion-Techniques-for-State-Estimation

# Abstract
In this project, we developed a closed-loop controller for a self-balancing bicycle that can autonomously navigate towards waypoints.
The system was designed to operate using noisy wheel encoder and IMU sensors, which were used to estimate the bicycle's state in real time.
We implemented two different state estimation algorithms based on odometry and IMU data and combined their results using two sensor fusion techniques: 
the Extended Kalman Filter (EKF) and a weighted average method.
Our experimental results showed that the sensor fusion approach was effective in improving the accuracy and reliability of the state estimation process.
The EKF method produced better results than the weighted average method, particularly in cases where the sensors were highly noisy or where the bicycle was subjected to sudden changes in its motion.
Overall, our project demonstrated a viable approach for constructing an autonomous navigation system for a self-balancing bicycle, using readily available sensors and state estimation techniques.
The results of this project could have practical applications in fields such as transportation and robotics, where accurate and reliable control of dynamic systems is essential.

# About the code

The code includes a simulation of the Arduino Self Balancing Bike from the enginiering kit. the simulation shows a stable controller design, state estimation based on sensor fusion and balancing. it can be run in ground truth mode or in state estimation mode, depending on which controller is active. Aslo the method of state estimation used to obtain the current state can be changed. 
