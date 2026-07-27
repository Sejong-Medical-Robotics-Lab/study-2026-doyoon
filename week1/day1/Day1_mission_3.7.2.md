# Day1 · 3.7 실습 미션②

```bash

$ cd ~/robot_study/week1
$ mkdir data backup
$ touch data/exp_01.csv data/exp_02.csv data/exp_03.csv data/memo.txt
$ ls data 
$ cp data/exp_*.csv backup/ 
$ mv data/memo.txt data/note.txt 
$ rm backup/exp_03.csv 
$ ls -al data backup
backup:
total 8
drwxrwxr-x 2 doyoon doyoon 4096 Jul 22 06:44 .
drwxrwxr-x 4 doyoon doyoon 4096 Jul 22 06:33 ..
-rw-rw-r-- 1 doyoon doyoon    0 Jul 22 06:43 exp_01.csv
-rw-rw-r-- 1 doyoon doyoon    0 Jul 22 06:43 exp_02.csv

data:
total 8
drwxrwxr-x 2 doyoon doyoon 4096 Jul 22 06:44 .
drwxrwxr-x 4 doyoon doyoon 4096 Jul 22 06:33 ..
-rw-rw-r-- 1 doyoon doyoon    0 Jul 22 06:43 exp_01.csv
-rw-rw-r-- 1 doyoon doyoon    0 Jul 22 06:43 exp_02.csv
-rw-rw-r-- 1 doyoon doyoon    0 Jul 22 06:43 exp_03.csv
-rw-rw-r-- 1 doyoon doyoon    0 Jul 22 06:43 note.txt
```

## 확인포인트
- backup에는 몇 개의 파일이 남아 있어야 하는가?  
2개  
- 와일드카드 *가 어떤 파일들을 선택했는지 설명할 수 있는가?  
exp_*.csv이므로 시작은 exp_ 끝은 .csv로 오는 파일을 전부 고르라는 
뜻  
