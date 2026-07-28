# Day1 5.12 도전 미션 ★ 
```bash

nano week1/check_ros.sh

#!/bin/bash
echo "# ROS2 환경 점검 ($(date +%F))"
echo "- ROS_DISTRO: ${ROS_DISTRO:-(미설정!)}"
echo "- ROS_DOMAIN_ID: ${ROS_DOMAIN_ID:-0(기본값)}"
echo "- ros2 명령: $(command -v ros2 || echo 없음)"
echo "- 설치 패키지 수: $(ros2 pkg list 2>/dev/null | wc -l)"
ros2 doctor --report 2>/dev/null | grep -A2 "NETWORK" | head -5

chmod +x week1/check_ros.sh
./check_ros.sh

# ROS2 환경 점검 (2026-07-28)
- ROS_DISTRO: humble
- ROS_DOMAIN_ID: 95
- ros2 명령: /opt/ros/humble/bin/ros2
- 설치 패키지 수: 274
cd~   NETWORK CONFIGURATION
inet         : 127.0.0.1
inet4        : ['127.0.0.1']
```

