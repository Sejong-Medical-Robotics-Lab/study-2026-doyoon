# 데이터 흐름 지도 (RM75 시뮬레이션)

| 데이터 | 실제 이름 (토픽/액션) | 타입 | 주기(Hz)/방식 |
|---|---|---|---|
| 관절 상태 | /joint_states | sensor_msgs/msg/JointState | 100 Hz · 토픽 |
| 궤적 명령 | /rm_group_controller/follow_joint_trajectory | control_msgs/action/FollowJointTrajectory | 액션 |
| 그리퍼 명령/상태 | /gripper_controller/follow_joint_trajectory | control_msgs/action/FollowJointTrajectory | 액션 |
| 모드/에러상태 | 없음(시뮬에 존재 X) | 없음 | 없음 |


