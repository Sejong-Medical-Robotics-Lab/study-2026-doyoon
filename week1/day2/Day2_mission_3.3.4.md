# Day2 3.3 실습 미션④
```bash

[터미널 1] 덧셈 서비스 서버 실행
$ ros2 run demo_nodes_cpp add_two_ints_server

[터미널 2] 조사 후 호출
$ ros2 service list 
/add_two_ints
/add_two_ints_server/describe_parameters
/add_two_ints_server/get_parameter_types
/add_two_ints_server/get_parameters
/add_two_ints_server/list_parameters
/add_two_ints_server/set_parameters
/add_two_ints_server/set_parameters_atomically

$ ros2 interface show example_interfaces/srv/AddTwoInts
int64 a
int64 b
---
int64 sum

$ ros2 service call /add_two_ints example_interfaces/srv/AddTwoInts \
"{a: 7, b: 35}"
requester: making request: example_interfaces.srv.AddTwoInts_Request(a=7, b=35)

response:
example_interfaces.srv.AddTwoInts_Response(sum=42)

[터미널2]
[INFO] [1785231904.320351408] [add_two_ints_server]: Incoming request
a: 7 b: 35
```
# 확인포인트
echo와 달리 흐르지않고 요청 시 응답이 한번 온다는 점에서 서비스이다.
