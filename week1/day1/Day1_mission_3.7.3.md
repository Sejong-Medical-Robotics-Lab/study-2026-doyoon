## Day1 · 3.7 실습 미션③  
```bash

$ cd ~/robot_study/week1
$  for i in $(seq 1 100); do echo "[INFO] step $i: joint state ok" >> robot.log; done
$ echo "[ERROR] step 41: motor 3 overheat" >> robot.log
$ echo "[WARN] step 77: battery low (18%)" >> robot.log
$ wc -l robot.log
102 robot.log
$ tail -n 5 robot.log
[INFO] step 98: joint state ok
[INFO] step 99: joint state ok
[INFO] step 100: joint state ok
[ERROR] step 41: motor 3 overheat
[WARN] step 77: battery low (18%)
$ grep ERROR robot.log
[ERROR] step 41: motor 3 overheat
$ grep -n "motor 3" robot.log
101:[ERROR] step 41: motor 3 overheat

## 확인포인트
- 102줄짜리 로그에서 문제의 줄을 눈으로 찾지 않고 명령 한 줄로 찾아냈습니다. ERROR 대신 WARN을 찾으려면 어떻게 바꾸면되는가?  
:grep WARN robot.log 작성 후 grep -n "battery low"을 작성 시 줄번호와 함꼐 오류가 난 줄 출력이됨.

