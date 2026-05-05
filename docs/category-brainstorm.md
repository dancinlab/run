# `run` 슈퍼앱 카테고리 브레인스토밍

기존: 💬 Messenger · 👛 Wallet · 🌐 SNS

## 결정 (2026-05-05)

**채택** — README 카테고리 표에 추가:
📧 Mail · 📅 Calendar · 🛒 Shopping · 🚗 Mobility · 🍔 Food/Order ·
📝 Notes · ✅ Tasks · 📁 Files/Drive · 🔐 Auth/2FA · 🤖 AI ·
🏃 Health/Fitness · 📚 Read/Library · 📷 Camera/Photo · 🏠 Home/IoT · 🗺️ Map/Place ·
📡 Feed/RSS · 💬 Channel/Community · 🪪 Identity · 📞 Call

**보류** — 채택하지 않은 것이 아니라 시점만 미룸:
🎵 Music/Audio · 📺 Video/Stream · 💻 Dev/Code · 🎮 Game · 🔗 Shortcut/Action

---

## 1순위 — 슈퍼앱 정석 (사용 빈도 높음)

| 카테고리 | 빈 상태 | 사용자가 추가할 만한 것 |
| --- | --- | --- |
| 📧 **Mail** | 받은 메일함 0개 | Gmail / Proton / iCloud / 회사 메일 |
| 📅 **Calendar** | 캘린더 0개 | iCloud / Google Cal / 노션 캘린더 |
| 🎵 **Music/Audio** | 0개 | Spotify / Apple Music / YouTube Music / 팟캐스트 |
| 📺 **Video/Stream** | 0개 | YouTube / Netflix / 디즈니+ / Twitch |
| 🛒 **Shopping** | 0개 | 쿠팡 / 아마존 / 무신사 / 당근 |
| 🚗 **Mobility** | 0개 | 카카오T / Uber / 따릉이 / 지하철앱 |
| 🍔 **Food/Order** | 0개 | 배민 / 요기요 / 스타벅스 / 도어대시 |

## 2순위 — 생산성 / 도구

| 카테고리 | 사용자가 추가할 만한 것 |
| --- | --- |
| 📝 **Notes** | Obsidian / Notion / Apple Notes / Bear |
| ✅ **Tasks** | Things / Todoist / Linear / Reminders |
| 📁 **Files/Drive** | iCloud / Dropbox / Google Drive / NAS |
| 🔐 **Auth/2FA** | 1Password / Authy / Apple Passwords |
| 💻 **Dev/Code** | GitHub / Linear / Vercel / 서버 SSH |
| 🤖 **AI** | Claude / ChatGPT / Gemini / 로컬 LLM |

## 3순위 — 개인 데이터 / 라이프

| 카테고리 | 사용자가 추가할 만한 것 |
| --- | --- |
| 🏃 **Health/Fitness** | Apple Health / Strava / 스트롱 / 가민 |
| 📚 **Read/Library** | RSS / Pocket / Kindle / 밀리 |
| 🎮 **Game** | Steam / 닌텐도 / 모바일 게임 런처 |
| 📷 **Camera/Photo** | 사진앱 / Lightroom / 인스타 카메라 |
| 🏠 **Home/IoT** | HomeKit / SmartThings / 도어락 |
| 🗺️ **Map/Place** | 네이버지도 / 구글맵 / 카카오맵 즐겨찾기 |

## 4순위 — 메타/슈퍼앱스러운 것

| 카테고리 | 의미 |
| --- | --- |
| 🔗 **Shortcut/Action** | 단축어 · URL scheme · 자동화 트리거 (실행 자체가 항목) |
| 📡 **Feed/RSS** | SNS와 분리된 비-알고리즘 구독 |
| 💬 **Channel/Community** | Discord / Slack / 카톡 오픈채팅 (메신저와 별도 — 1:1이 아닌 N:N) |
| 🪪 **Identity** | 신분증 / 자격증 / 멤버십 (Wallet과 분리 가능) |
| 📞 **Call** | 전화 / FaceTime / Zoom / Discord 음성 (메신저와 별도) |

---

## 추천 다음 스텝

**watchOS 1–6개 슬롯** 제약을 생각하면, 일반 사용자가 손목에서 누르는 건 결국 **메신저 1–2개 + 음악/지도/캘린더/결제** 정도. 그래서 다음 모듈로 우선순위가 높은 건:

1. **🎵 Music/Audio** — 손목에서 매일 누름, 통합 모델 단순 (재생/일시정지/다음)
2. **📅 Calendar** — "오늘 뭐 있지" 가 모든 플랫폼에서 공통
3. **🗺️ Map/Place** — 즐겨찾는 장소만 등록하는 빈-캔버스 철학과 잘 맞음
