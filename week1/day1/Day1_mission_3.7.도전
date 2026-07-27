# 도전 미션 ★
```bash

$ nano week1/new_exp.sh
#!/bin/bash
 사용법: ./new_exp.sh 실험이름
mkdir -p ~/robot_study/experiments/$1/{data,logs,results}
echo "# 실험 노트: $1 ($(date +%F))" > ~/robot_study/experiments/$1/README.md
echo "실험 폴더 생성 완료: $1"

$ chmod +x new_exp.sh
$ ./new_exp.sh go2_walk_test
실험 폴더 생성 완료: go2_walk_test
$ ls -R ~/robot_study/experiments
/home/doyoon/robot_study/experiments:
go2_walk_test

/home/doyoon/robot_study/experiments/go2_walk_test:
data  logs  README.md  results

/home/doyoon/robot_study/experiments/go2_walk_test/data:

/home/doyoon/robot_study/experiments/go2_walk_test/logs:

/home/doyoon/robot_study/experiments/go2_walk_test/results:
```  
##확인포인트   
$1이 무엇으로 바뀌었는가?  
go2_walk_test로 바뀜.


##이름을 바꾸어 실행 후 스크립트
```bash

$ ./new_exp.sh g1_walk_test
실험 폴더 생성 완료: g1_walk_test
doyoon@ubuntu:~/robot_study/study-2026-doyoon/week1/day1$ ls -R ~/robot_study/experiments
/home/doyoon/robot_study/experiments:
g1_walk_test  go2_walk_test

/home/doyoon/robot_study/experiments/g1_walk_test:
data  logs  README.md  results

/home/doyoon/robot_study/experiments/g1_walk_test/data:

/home/doyoon/robot_study/experiments/g1_walk_test/logs:

/home/doyoon/robot_study/experiments/g1_walk_test/results:

/home/doyoon/robot_study/experiments/go2_walk_test:
data  logs  README.md  results
```
