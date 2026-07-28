# Day2 3.3 실습 미션① 
```bash

[터미널 1] 시뮬레이터 실행
$ ros2 run turtlesim turtlesim_node

[터미널 2] 키보드 조종 (방향키로 이동)
$ ros2 run turtlesim turtle_teleop_key

[터미널 3] 무슨 일이 일어나는지 관찰
$ ros2 node list
/teleop_turtle
/turtlesim

$ ros2 topic list -t
/parameter_events [rcl_interfaces/msg/ParameterEvent]
/rosout [rcl_interfaces/msg/Log]
/turtle1/cmd_vel [geometry_msgs/msg/Twist]
/turtle1/color_sensor [turtlesim/msg/Color]
/turtle1/pose [turtlesim/msg/Pose]

$ ros2 topic echo /turtle1/cmd_vel
linear:
  x: 0.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: -2.0
---
linear:
  x: 2.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0
---

$ ros2 topic echo /turtle1/pose
x: 4.676270961761475
y: 3.7249581813812256
theta: -2.0160000324249268
linear_velocity: 0.0
angular_velocity: 0.0
---
x: 4.676270961761475
y: 3.7249581813812256
theta: -2.0160000324249268
linear_velocity: 0.0
angular_velocity: 0.0
---

$ ros2 interface show geometry_msgs/msg/Twist
# This expresses velocity in free space broken into its linear and angular parts.

Vector3  linear
	float64 x
	float64 y
	float64 z
Vector3  angular
	float64 x
	float64 y
	float64 z

```

## 확인포인트
- 방향키 ↑를 누를 때 cmd_vel의 어느 필드가 바뀌는가?   
:linear x  
- ←/→는?  
:Angular z  

