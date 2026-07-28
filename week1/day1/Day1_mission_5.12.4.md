# Day1 5.12실습미션 ④
```bash

$ ros2 topic list
/parameter_events
/rosout
/turtle1/cmd_vel
/turtle1/color_sensor
/turtle1/pose

$ ros2 topic echo /turtle1/cmd_vel
linear:
  x: 2.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0
---
linear:
  x: 0.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: -2.0

$ ros2 topic echo /turtle1/pose
x: 4.065577030181885
y: 7.431463241577148
theta: 0.03200000151991844
linear_velocity: 0.0
angular_velocity: 0.0
---
```
  
##확인포인트 : 터미널 2에서 방향키를 누를 때마다 echo 화면에 어떤 숫자가 바뀌는지 관찰합니다.  
:cmd_vel에선 angular_z와 linear_x가 바뀌고,  
 pose에선 x,y,theta,linear_velocitiy,angular_velocity가 상황에 따라 변경이된다.  
 
