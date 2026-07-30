	# Day3 3.6 미션 ①

```bash

$ ros2 topic list
/attached_collision_object
/collision_object
/display_contacts
/display_planned_path
/dynamic_joint_states
/gripper_controller/controller_state
/gripper_controller/joint_trajectory
/gripper_controller/state
/gripper_controller/transition_event
/joint_state_broadcaster/transition_event
/joint_states
/monitored_planning_scene
/motion_plan_request
/parameter_events
/planning_scene
/planning_scene_world
/recognized_object_array
/rm_group_controller/controller_state
/rm_group_controller/joint_trajectory
/rm_group_controller/state
/rm_group_controller/transition_event
/robot_description
/robot_description_semantic
/rosout
/rviz_moveit_motion_planning_display/robot_interaction_interactive_marker_topic/feedback
/rviz_moveit_motion_planning_display/robot_interaction_interactive_marker_topic/update
/tf
/tf_static
/trajectory_execution_event
$ ros2 topic echo /joint_states --once > state.txt
$ ros2 topic hz /joint_states
WARNING: topic [/joint_states] does not appear to be published yet
average rate: 99.922
	min: 0.007s max: 0.013s std dev: 0.00098s window: 101
average rate: 99.884
	min: 0.006s max: 0.014s std dev: 0.00100s window: 201
average rate: 99.953
	min: 0.005s max: 0.015s std dev: 0.00098s window: 302
caverage rate: 100.003
	min: 0.005s max: 0.015s std dev: 0.00093s window: 403
average rate: 100.001
	min: 0.005s max: 0.015s std dev: 0.00088s window: 503
^C
$ ros2 node list
/controller_manager
/gripper_controller
/interactive_marker_display_187651820802352
/joint_state_broadcaster
/move_group
/move_group_private_187651411670864
/moveit_simple_controller_manager
/rm_group_controller
/robot_state_publisher
/rviz
/rviz_private_281471420351456
/transform_listener_impl_aaaafff51fd0
/transform_listener_impl_aaab17dd7400
/transform_listener_impl_ffff2c0a18c0
doyoon@ubuntu:~$ ros2 node info /move_group
/move_group
  Subscribers:
    /parameter_events: rcl_interfaces/msg/ParameterEvent
    /trajectory_execution_event: std_msgs/msg/String
  Publishers:
    /display_contacts: visualization_msgs/msg/MarkerArray
    /display_planned_path: moveit_msgs/msg/DisplayTrajectory
    /motion_plan_request: moveit_msgs/msg/MotionPlanRequest
    /parameter_events: rcl_interfaces/msg/ParameterEvent
    /robot_description_semantic: std_msgs/msg/String
    /rosout: rcl_interfaces/msg/Log
  Service Servers:
    /apply_planning_scene: moveit_msgs/srv/ApplyPlanningScene
    /check_state_validity: moveit_msgs/srv/GetStateValidity
    /clear_octomap: std_srvs/srv/Empty
    /compute_cartesian_path: moveit_msgs/srv/GetCartesianPath
    /compute_fk: moveit_msgs/srv/GetPositionFK
    /compute_ik: moveit_msgs/srv/GetPositionIK
    /get_planner_params: moveit_msgs/srv/GetPlannerParams
    /load_map: moveit_msgs/srv/LoadMap
    /move_group/describe_parameters: rcl_interfaces/srv/DescribeParameters
    /move_group/get_parameter_types: rcl_interfaces/srv/GetParameterTypes
    /move_group/get_parameters: rcl_interfaces/srv/GetParameters
    /move_group/list_parameters: rcl_interfaces/srv/ListParameters
    /move_group/set_parameters: rcl_interfaces/srv/SetParameters
    /move_group/set_parameters_atomically: rcl_interfaces/srv/SetParametersAtomically
    /plan_kinematic_path: moveit_msgs/srv/GetMotionPlan
    /query_planner_interface: moveit_msgs/srv/QueryPlannerInterfaces
    /save_map: moveit_msgs/srv/SaveMap
    /set_planner_params: moveit_msgs/srv/SetPlannerParams
  Service Clients:

  Action Servers:
    /execute_trajectory: moveit_msgs/action/ExecuteTrajectory
    /move_action: moveit_msgs/action/MoveGroup
  Action Clients:

$ ros2 action list
/execute_trajectory
/gripper_controller/follow_joint_trajectory
/move_action
/rm_group_controller/follow_joint_trajectory

```
## 조사질문 

- ① /joint_states에 몇 개의 관절이 보이는가? 팔 7개 외에 무엇이 더 있는가? (힌트 : 그리퍼) —
name 배열을 J1~J7 대응(2.1절)과 맞춰 검산  
  :9개 , joint1,joint2,joint3,joint4.joint5,joint6,joint7,gripper_finger1_joint,gripper_finger2_joint  
  
- ② move_group 노드는 무엇을 구독하고 무엇을 발행하는가? node info 출력에서 "요청이 들어오는
통로"와 "궤적이 나가는 통로"로 보이는 것을 하나씩 골라 적기  
  :move_groupd은/parameter_events와 /trajectory_execution_event 2개를 구독하고,  
  /display_contacts , /display_planned_path ,/motion_plan_request , /parameter_events , /robot_description_semantic , /rosout 6개를 발행함  
  "요청이 들어오는 통로": /move_action , "궤적이 나가는 통로":execute_trajectory  

- ③ Go2·G1의 "속도 명령"과 달리 RM75에는 왜 "궤적"이 흐르는가? — 이동 로봇과
매니퓰레이터의 차이를 한 문장으로 
  :이동로봇은 순간 명령을 계속 보내야 움직이지만 , 매니퓰레이터는 목표 자세 하나를 주면 출발부터 도착까지 플래너가 시간표가 붙은 관절 궤적 전체를 계산하여 한번에 실행하기 때문이다.  


