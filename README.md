![Screenshot](screenshot.png)

# Individual Engineering Project - Comparative Analysis of Sensor Fusion Techniques for State Estimation
## Abstract

In this project, we developed a closed-loop controller for a self-balancing bicycle that can autonomously navigate towards waypoints. The system was designed to operate using noisy wheel encoders and IMU sensors, which were used to estimate the bicycle's state in real-time. We implemented two different state estimation algorithms based on odometry and IMU data and combined their results using two sensor fusion techniques: the Extended Kalman Filter (EKF) and a weighted average method. Our experimental results showed that the sensor fusion approach was effective in improving the accuracy and reliability of the state estimation process. The EKF method produced better results than the weighted average method, particularly in cases where the sensors were highly noisy or where the bicycle was subjected to sudden changes in its motion. Overall, our project demonstrated a viable approach for constructing an autonomous navigation system for a self-balancing bicycle, using readily available sensors and state estimation techniques. The results of this project could have practical applications in fields such as transportation and robotics, where accurate and reliable control of dynamic systems is essential.

## About the Code

The code includes a simulation of the Arduino Self-Balancing Bike from the engineering kit. The simulation shows a stable controller design, state estimation based on sensor fusion, and balancing. It can be run in ground truth mode or in state estimation mode, depending on which controller is active. Also, the method of state estimation used to obtain the current state can be changed.


## Recognition
I am thrilled to announce that this project has been recognized and awarded the "Excellence in Education" Award by MathWorks. The award is designed to acknowledge unique and innovative educational projects that demonstrate a high level of creativity, vision, and in-depth understanding of MathWorks tools.

I am honored to receive this award and look forward to continuing our efforts in enhancing education through innovation.

This project is now also on the MathWorks github repository, links below. For more details about the award and MathWorks' educational programs, please visit their project page and program page.

Project page Matlab:

https://github.com/mathworks/MathWorks-Excellence-in-Innovation/tree/main/projects/Sensor%20Fusion%20for%20Autonomous%20Systems

Program page Matlab:

https://github.com/mathworks/MathWorks-Excellence-in-Innovation/tree/main
