# Day1 · 3.7 실습 미션 ① 
```bash
$cd ~
$mkdir -p robot_study/week1
$cd robot_study/week1
$echo "Hello Robot" > hello.txt
$cat hello.txt
Hello Robot  
$ls -al
total 12  
drwxrwxr-x 2 doyoon doyoon 4096 Jul 22 06:26  
drwxrwxr-x 3 doyoon doyoon 4096 Jul 22 06:26  
-rw-rw-r-- 1 doyoon doyoon   12 Jul 22 06:26 hello.txt
```
## 확인 포인트
- hello.txt 크기 = 12 bytes, 생성 시각 확인 가능
- `ls -al` 맨 앞 문자: `d` = 디렉토리, `-` = 파일 → hello.txt는 `-`로 시작하니 일반 파일
