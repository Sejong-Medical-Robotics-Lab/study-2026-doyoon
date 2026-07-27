#!/bin/bash
# 학습일지 자동화 스크립트 (교육자료 ★도전 미션)
# 사용법: ./log.sh

DATE=$(date +%Y-%m-%d)
FILE="log/$DATE.md"

mkdir -p log

# 오늘 파일이 없으면 템플릿으로 새로 생성
if [ ! -f "$FILE" ]; then
  cat > "$FILE" << TEMPLATE
# $DATE 학습일지

## 오늘 배운 것


## 막힌 것 / 어려웠던 것


## 질문 / 더 찾아볼 것

TEMPLATE
  echo "새 학습일지 생성: $FILE"
else
  echo "오늘 학습일지 이어서 작성: $FILE"
fi

# 편집기로 작성
nano "$FILE"

# 변경 사항이 있으면 커밋 & 푸시
git add "$FILE"
if git diff --cached --quiet; then
  echo "변경 없음 - 커밋 건너뜀"
else
  git commit -m "docs: 학습일지 $DATE"
  git push origin main
  echo "완료: $FILE 커밋·푸시됨"
fi
