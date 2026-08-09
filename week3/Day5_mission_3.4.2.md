# 미션 ② 나만의 토픽 지도 완성하기 (필수)

| 데이터 | 실제 토픽 이름 | 메시지 타입 | 주기(Hz) |
|---|---|---|---|
| 속도 명령 | `/cmd_vel` | `geometry_msgs/msg/Twist` | 고정주기 없음 |
| 보행 상태 | `/odom` | `nav_msgs/msg/Odometry` | 48Hz |
| LiDAR | `/velodyne_points` | `sensor_msgs/msg/PointCloud2` |  9.9Hz |
| 관절 상태(low) | `/joint_states` | `sensor_msgs/msg/JointState` | 250Hz |
| 카메라 영상 | 없음 | 없음 | 없음 |

