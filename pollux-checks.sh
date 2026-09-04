#!/bin/sh
# pollux-checks.sh — 이 repo 의 게이트 선언(ci-wiring-standard §10-2). PoC 용 최소 1개.
gate fixture-version-shape \
  "grep -qE '^[0-9]+[.][0-9]+[.][0-9]+$' PLATFORM_VERSION" \
  --canary "sh -c 'printf x > /tmp/_v; grep -qE \"^[0-9]+[.][0-9]+[.][0-9]+$\" /tmp/_v'" \
  --scope "루트 PLATFORM_VERSION 이 x.y.z 인가 — mw 기본값이 판 번호를 읽는 자리"
