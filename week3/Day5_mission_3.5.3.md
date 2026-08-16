# ③ 상태 토픽 해부 (필수)
```bash 

- $ros2 topic list | grep -i state
/dynamic_joint_states
/joint_group_effort_controller/controller_state
/joint_group_effort_controller/state
/joint_states
/joint_states_controller/transition_event

- $ ros2 topic echo /joint_states --once
A message was lost!!!
	total count change:1
	total count: 1---
header:
  stamp:
    sec: 1449
    nanosec: 448000000
  frame_id: base_link
name:
- rf_hip_joint
- lf_lower_leg_joint
- rf_lower_leg_joint
- lf_upper_leg_joint
- rh_hip_joint
- rf_upper_leg_joint
- rh_upper_leg_joint
- rh_lower_leg_joint
- lh_hip_joint
- lf_hip_joint
- lh_upper_leg_joint
- lh_lower_leg_joint
position:
- -0.06623920692762209
- -2.1058981801162995
- -2.080787092547613
- 1.089315234839109
- -0.060524668685543404
- 1.0353325430477174
- 0.9758917898673785
- -2.120187160735245
- 0.07555401400306216
- 0.06518924448988717
- 0.9856541610303688
- -2.065611240968078
velocity:
- 0.3054847223545769
- 1.0249714099309455
- 2.1587526132352224
- 2.8362703209238784
- -0.5398519247043676
- -0.6080863156586601
- 2.700664445472454
- 2.105412004439012
- 0.11753789540279361
- 0.0331317963677987
- -2.307710394353662
- 5.9460093864974315
effort:
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
---

- $ ros2 topic echo /joint_states --once
A message was lost!!!
	total count change:1
	total count: 1---
header:
  stamp:
    sec: 1449
    nanosec: 448000000
  frame_id: base_link
name:
- rf_hip_joint
- lf_lower_leg_joint
- rf_lower_leg_joint
- lf_upper_leg_joint
- rh_hip_joint
- rf_upper_leg_joint
- rh_upper_leg_joint
- rh_lower_leg_joint
- lh_hip_joint
- lf_hip_joint
- lh_upper_leg_joint
- lh_lower_leg_joint
position:
- -0.06623920692762209
- -2.1058981801162995
- -2.080787092547613
- 1.089315234839109
- -0.060524668685543404
- 1.0353325430477174
- 0.9758917898673785
- -2.120187160735245
- 0.07555401400306216
- 0.06518924448988717
- 0.9856541610303688
- -2.065611240968078
velocity:
- 0.3054847223545769
- 1.0249714099309455
- 2.1587526132352224
- 2.8362703209238784
- -0.5398519247043676
- -0.6080863156586601
- 2.700664445472454
- 2.105412004439012
- 0.11753789540279361
- 0.0331317963677987
- -2.307710394353662
- 5.9460093864974315
effort:
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
---

- $ ros2 topic echo /joint_states --once
A message was lost!!!
	total count change:1
	total count: 1---
header:
  stamp:
    sec: 1449
    nanosec: 448000000
  frame_id: base_link
name:
- rf_hip_joint
- lf_lower_leg_joint
- rf_lower_leg_joint
- lf_upper_leg_joint
- rh_hip_joint
- rf_upper_leg_joint
- rh_upper_leg_joint
- rh_lower_leg_joint
- lh_hip_joint
- lf_hip_joint
- lh_upper_leg_joint
- lh_lower_leg_joint
position:
- -0.06623920692762209
- -2.1058981801162995
- -2.080787092547613
- 1.089315234839109
- -0.060524668685543404
- 1.0353325430477174
- 0.9758917898673785
- -2.120187160735245
- 0.07555401400306216
- 0.06518924448988717
- 0.9856541610303688
- -2.065611240968078
velocity:
- 0.3054847223545769
- 1.0249714099309455
- 2.1587526132352224
- 2.8362703209238784
- -0.5398519247043676
- -0.6080863156586601
- 2.700664445472454
- 2.105412004439012
- 0.11753789540279361
- 0.0331317963677987
- -2.307710394353662
- 5.9460093864974315
effort:
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
- .nan
---

- $ ros2 interface show sensor_msgs/msg/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints.
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state.
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty.
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.

std_msgs/Header header
	builtin_interfaces/Time stamp
		int32 sec
		uint32 nanosec
	string frame_id

string[] name
float64[] position
float64[] velocity
float64[] effort
```
