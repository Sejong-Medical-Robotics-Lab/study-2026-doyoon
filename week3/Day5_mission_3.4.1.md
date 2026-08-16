#미션 ① 환경 준비와 첫 탐사 (필수)
```bash

- ros2 node list
/base_to_footprint_ekf
/contacts_sensor
/controller_manager
/footprint_to_odom_ekf
/gazebo
/gazebo_ros2_control
/imu/imu_plugin
/joint_group_effort_controller
/joint_states_controller
/p3d_base_controller
/quadruped_controller_node
/robot_state_publisher
/state_estimation_node
/teleop_twist_keyboard
/transform_listener_impl_5b2191efc2f0
/transform_listener_impl_5f74e1cd8da0

- ros2 topic list -t
/base_to_footprint_pose [geometry_msgs/msg/PoseWithCovarianceStamped]
/body_pose [geometry_msgs/msg/Pose]
/clock [rosgraph_msgs/msg/Clock]
/cmd_vel [geometry_msgs/msg/Twist]
/diagnostics [diagnostic_msgs/msg/DiagnosticArray]
/dynamic_joint_states [control_msgs/msg/DynamicJointState]
/foot [visualization_msgs/msg/MarkerArray]
/foot_contacts [champ_msgs/msg/ContactsStamped]
/imu/data [sensor_msgs/msg/Imu]
/joint_group_effort_controller/controller_state [control_msgs/msg/JointTrajectoryControllerState]
/joint_group_effort_controller/joint_trajectory [trajectory_msgs/msg/JointTrajectory]
/joint_group_effort_controller/state [control_msgs/msg/JointTrajectoryControllerState]
/joint_group_effort_controller/transition_event [lifecycle_msgs/msg/TransitionEvent]
/joint_states [sensor_msgs/msg/JointState]
/joint_states_controller/transition_event [lifecycle_msgs/msg/TransitionEvent]
/odom [nav_msgs/msg/Odometry]
/odom/ground_truth [nav_msgs/msg/Odometry]
/odom/local [nav_msgs/msg/Odometry]
/odom/raw [nav_msgs/msg/Odometry]
/parameter_events [rcl_interfaces/msg/ParameterEvent]
/performance_metrics [gazebo_msgs/msg/PerformanceMetrics]
/robot_description [std_msgs/msg/String]
/rosout [rcl_interfaces/msg/Log]
/set_pose [geometry_msgs/msg/PoseWithCovarianceStamped]
/tf [tf2_msgs/msg/TFMessage]
/tf_static [tf2_msgs/msg/TFMessage]

- ros2 topic echo /cmd_vel
linear:
  x: 0.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0
---

- ros2 topic hz /velodyne_points
WARNING: topic [/velodyne_points] does not appear to be published yet
average rate: 9.932
	min: 0.100s max: 0.102s std dev: 0.00066s window: 11
average rate: 9.918
	min: 0.097s max: 0.107s std dev: 0.00164s window: 21
average rate: 9.924
	min: 0.097s max: 0.107s std dev: 0.00138s window: 31

- ros2 interface show sensor_msgs/msg/PointCloud2d2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the "fields" array.
#
# The point cloud data may be organized 2d (image-like) or 1d (unordered).
# Point clouds organized as 2d images may be produced by camera depth sensors
# such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d points).
std_msgs/Header header
	builtin_interfaces/Time stamp
		int32 sec
		uint32 nanosec
	string frame_id

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields
	uint8 INT8    = 1
	uint8 UINT8   = 2
	uint8 INT16   = 3
	uint8 UINT16  = 4
	uint8 INT32   = 5
	uint8 UINT32  = 6
	uint8 FLOAT32 = 7
	uint8 FLOAT64 = 8
	string name      #
	uint32 offset    #
	uint8  datatype  #
	uint32 count     #

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

- 조사 질문

① 속도 명령 토픽의 메시지 타입은 무엇이고, 어떤 필드로 구성되어 있는가?  
linear   (x, y, z)  
angular  (x, y, z)
② LiDAR 토픽의 발행 주기(Hz)와 frame_id 는 무엇인가? (--no-arr 활용)  
average rate: 9.9 , frame_id: velodyne  

③ turtlesim 의 토픽 구조와 비교해 무엇이 같고 무엇이 추가되었는가?  
같은점 : cmd_vel의 타입이 둘다 geometry_msgs/msg/Twist  
다른점 : Go2에서 linear.y(좌우이동)이 활성화됨, 다양한 토픽을이 Go2에 등장 , turtlesim 은 /pose 정바위치 엿지만 Go2 는 /odom을 이용하여 추정위치로 변경됨

