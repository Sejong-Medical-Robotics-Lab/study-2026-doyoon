# Day2 3.3 실습 미션 ①
```bash

$ ros2 node list
/listener
/talker


$ ros2 topic list -t
/chatter [std_msgs/msg/String]
/parameter_events [rcl_interfaces/msg/ParameterEvent]
/rosout [rcl_interfaces/msg/Log]

$ ros2 node info /talker
/talker
  Subscribers:
    /parameter_events: rcl_interfaces/msg/ParameterEvent
  Publishers:
    /chatter: std_msgs/msg/String
    /parameter_events: rcl_interfaces/msg/ParameterEvent
    /rosout: rcl_interfaces/msg/Log
  Service Servers:
    /talker/describe_parameters: rcl_interfaces/srv/DescribeParameters
    /talker/get_parameter_types: rcl_interfaces/srv/GetParameterTypes
    /talker/get_parameters: rcl_interfaces/srv/GetParameters
    /talker/list_parameters: rcl_interfaces/srv/ListParameters
    /talker/set_parameters: rcl_interfaces/srv/SetParameters
    /talker/set_parameters_atomically: rcl_interfaces/srv/SetParametersAtomically
  Service Clients:

  Action Servers:

  Action Clients:


$ ros2 topic echo /chatter
data: 'Hello World: 415'
---
data: 'Hello World: 416'
---
data: 'Hello World: 417'
---
data: 'Hello World: 418'
---
data: 'Hello World: 419'
---
data: 'Hello World: 420'

$ ros2 topic info /chatter
Type: std_msgs/msg/String
Publisher count: 1
Subscription count: 2

$ ros2 topic hz /chatter
average rate: 0.999
	min: 1.000s max: 1.001s std dev: 0.00013s window: 2
average rate: 1.000
	min: 1.000s max: 1.001s std dev: 0.00020s window: 3
average rate: 1.000
	min: 0.999s max: 1.001s std dev: 0.00072s window: 5


$ ros2 interface show std_msgs/msg/String
# This was originally provided as an example message.
# It is deprecated as of Foxy
# It is recommended to create your own semantically meaningful message.
# However if you would like to continue using this please use the equivalent in example_msgs.

string data
```

## 확인포인트
/chatter의 발행 주기는 몇 Hz인가?  
1  
  
ros2 topic info /chatter 로 확인한 구독자 수는 몇인가?  
publisher 1명 , subscription 1명 총 2명  
  
echo를 켠 상태에서 다시 확인하면 왜 하나 늘어나는가?  
echo 자신도 구독 노드이다.  

