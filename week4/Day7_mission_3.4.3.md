# 미션 ③ 나만의 데이터 흐름 지도

| 데이터 | 실제 토픽/채널 이름 | 타입 | 주기(Hz) |
|---|---|---|---|
| low state | `/g1/lowstate` | `g1_edu_interfaces/msg/LowState` | 27 |
| 모션/보행 명령 | ROS 토픽 없음 — 내부 API로 처리 (`LocoClient.Move` / `PlayAction`) | 파이썬 함수 호출 (토픽 아님) | 해당 없음 |
| 모드/상태 보고 | `/g1/mode` | `g1_edu_interfaces/msg/ModeState` | 5.3 
