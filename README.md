# 2026 로봇 스터디 학습 기록

ROS2(Humble) 및 로봇팔(매니퓰레이터) 실습을 다루는 2026 로봇 스터디의 개인 학습 저장소입니다. 미션별 실습 기록, 매일의 학습일지, 개발환경 리포트를 정리합니다.

## 폴더 구조

```
.
├── log/            # 날짜별 학습일지 (log.sh로 자동 생성)
├── week1/
│   ├── day1/       # ROS2 기초: 노드/토픽/서비스, talker-listener 통신, turtlesim
│   └── day2/       # ROS2 CLI, 토픽 발행/구독, teleop, rosbag 기록
├── week2/          # rqt_graph 분석, CLI 드릴, 시뮬레이션(그리퍼+암), 모션 시퀀스 설계
├── env_report.md   # sysinfo.sh로 생성되는 개발환경 리포트
├── log.sh          # 학습일지 생성 + 커밋/푸시 자동화 스크립트
└── sysinfo.sh       # 개발환경 정보를 env_report.md로 정리하는 스크립트
```

## Week 1 — ROS2 기초

- **Day 1**: 로봇 플랫폼 안전수칙, 기초 터미널 명령어, ROS2 노드/토픽/서비스/메시지 개념, C++ talker ↔ Python listener 통신, turtlesim/rviz2 실습
- **Day 2**: ROS2 CLI 도구 실습, 토픽 발행(square.sh)/구독, turtle teleop, rosbag 기록(`my_first_bag`)

## Week 2 — 심화 및 시뮬레이션

- rqt_graph를 통한 노드-토픽 구조 시각화 및 분석
- 5분 CLI 드릴로 조사 루틴 체화
- rosbag 기록 심화
- 그리퍼 + 로봇팔 시뮬레이션 환경 구성
- MoveJ / MoveL / MoveJ_P 등 기본 모션과 MoveIt2의 차이 학습
- 픽앤플레이스 동작을 위한 시퀀스 테이블 설계 (`week2/sequence_table.md`)

## 학습일지 (log/)

매일의 학습 내용, 성공한 것, 막힌 부분, 소감을 정리합니다. `log.sh`를 실행하면 오늘 날짜의 템플릿 파일이 생성되고, 편집 후 저장하면 자동으로 `git add` → `commit` → `push`까지 처리됩니다.

```bash
./log.sh
```

## 개발환경 리포트

`sysinfo.sh`를 실행하면 OS, 커널, CPU/메모리, 디스크 여유공간, Python 버전을 확인하여 `env_report.md`에 기록합니다.

```bash
./sysinfo.sh
```

## 개발 환경

- OS: Ubuntu 22.04.5 LTS
- ROS: ROS2 Humble
