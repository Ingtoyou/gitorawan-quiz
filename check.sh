#!/usr/bin/env bash
# ใช้งาน: bash check.sh https://github.com/Ingtoyou/gitorawan-quiz.git
REPO="$1"
if [ -z "$REPO" ]; then
  REPO="https://github.com/Ingtoyou/gitorawan-quiz.git"
fi
BRANCHES=(main feature/header feature/about feature/style \
feature/script docs/readme experiment/merge-conflict)
PASS=0
for b in "${BRANCHES[@]}"; do
  if git ls-remote --exit-code --heads "$REPO" "$b" >/dev/null 2>&1; then
    echo " พบ $b"; PASS=$((PASS+1))
  else
    echo " ขาด $b"
  fi
done
echo "ครบ $PASS จาก ${#BRANCHES[@]} สาย"