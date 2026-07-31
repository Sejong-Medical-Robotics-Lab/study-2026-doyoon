# 시뮬레이션 환경 

## gripper + arm 
- realman이 공개한 저장소에 EG2-4C2를 가져와 팔과 그리퍼를 결합한 URDF(Unified Robot Description Format)  
 을 만들었고 빌드와 검증을 한 뒤 Rviz에 확인용 launch를 만들어 띄움.  
  
##  gazebo 시뮬레이션 
-  gazebo는 물리법칙이 존재하고 , 위의 결합 모델은 gripper에 실제 물리량이 존재하지 않아 띄워지지 않음.  
-  팔의 궤적 실행을 검증하는 용도로 사용  
  
## MoveIt2 실습
- 팔 단독 demo로 plan 
- gazebo + MoveIt연동 (rm_75_gazebo.launch.py)으로 계획이 물리 세계에서 실행되는지 확인  
- setup Assistant로 그리퍼 포함 설정(rm_75_jaw_config)직접 생성 
## 토픽 서비스 액션 조사
- gazebo만 띄운 상태에서 29일에 학습한 CLI조사를 실시함.


