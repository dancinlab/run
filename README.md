# run 🏃‍♀

> 텅 비어있는 슈퍼앱. 메신저 · 지갑 · SNS … 카테고리는 있고, 내용물은 없다. 내가 직접 채운다.

`run`은 iOS · macOS · Apple Watch 에서 동작하는 **빈 캔버스 슈퍼앱**입니다.
X(舊 Twitter)가 최근 추구하는 "everything app" 방향과 비슷한 구조 — 메신저, 지갑, SNS 등 다양한 카테고리를 한 앱 안에 두지만, 결정적인 차이는 **모든 카테고리가 빈 상태로 시작**한다는 점입니다.

사용자는 각 카테고리 안에 자기가 실제로 쓰는 항목만 하나씩 추가해서, 자기만의 실행판을 구성합니다.

---

## 왜 비어있나

슈퍼앱들은 보통 메신저 · 결제 · 쇼핑 · 미디어 추천이 모두 기본값으로 깔려 있고, 사용자는 거기서 빼는 일부터 시작합니다.
`run`은 반대입니다. 카테고리는 있지만 내용은 없고, **추가하지 않은 것은 존재하지 않습니다.**

- 추천 없음
- 광고 · 트래커 없음
- 클라우드 계정 없음 (전부 로컬)
- 기본 등록된 메신저/지갑/피드 없음

> 화면에 보이는 것은 사용자가 한 번이라도 "이건 내가 쓴다"라고 결정한 것뿐입니다.

---

## 플랫폼

| 플랫폼 | 역할 |
| --- | --- |
| iOS | 메인. 실행판 편집 · 정렬 · 트리거 |
| macOS | 메뉴바 · 단축키 기반 빠른 실행 |
| watchOS | 손목에서 가장 자주 쓰는 1–6개를 한 번에 |

3 플랫폼은 **같은 실행판**을 공유합니다. 한쪽에서 추가하면 다른 쪽에 그대로 따라옵니다.

---

## 식별자

| 항목 | 값 |
| --- | --- |
| App name | `run` |
| Bundle ID | `app.run.needsingularity` |
| Repo | `github.com/need-singularity/run` |
| Local path | `/Users/ghost/core/run/` |

---

## 카테고리 (모듈)

카테고리는 코드에 **정적으로 등록된 모듈**입니다. 각 모듈은 자체 UI · 데이터 모델 · 통합 방식을 가지고, 그 안에 들어가는 개별 항목은 전부 사용자가 직접 추가하는 데이터입니다.

| 카테고리 | 빈 상태 | 사용자가 추가하는 것 (예시) |
| --- | --- | --- |
| 💬 Messenger | 등록된 메신저 0개 | KakaoTalk / Telegram / Signal / iMessage … |
| 👛 Wallet | 지갑 0개 | Apple Pay / 코인지갑 주소 / 멤버십 카드 … |
| 🌐 SNS | 피드 0개 | X / Threads / Mastodon / Bluesky … |
| 📧 Mail | 메일함 0개 | Gmail / Proton / iCloud / 회사 메일 |
| 📅 Calendar | 캘린더 0개 | iCloud / Google Cal / 노션 캘린더 |
| 🛒 Shopping | 0개 | 쿠팡 / 아마존 / 무신사 / 당근 |
| 🚗 Mobility | 0개 | 카카오T / Uber / 따릉이 / 지하철앱 |
| 🍔 Food/Order | 0개 | 배민 / 요기요 / 스타벅스 / 도어대시 |
| 📝 Notes | 0개 | Obsidian / Notion / Apple Notes / Bear |
| ✅ Tasks | 0개 | Things / Todoist / Linear / Reminders |
| 📁 Files/Drive | 0개 | iCloud / Dropbox / Google Drive / NAS |
| 🔐 Auth/2FA | 0개 | 1Password / Authy / Apple Passwords |
| 🤖 AI | 0개 | Claude / ChatGPT / Gemini / 로컬 LLM |
| 🏃 Health/Fitness | 0개 | Apple Health / Strava / 스트롱 / 가민 |
| 📚 Read/Library | 0개 | RSS / Pocket / Kindle / 밀리 |
| 📷 Camera/Photo | 0개 | 사진앱 / Lightroom / 인스타 카메라 |
| 🏠 Home/IoT | 0개 | HomeKit / SmartThings / 도어락 |
| 🗺️ Map/Place | 0개 | 네이버지도 / 구글맵 / 카카오맵 즐겨찾기 |
| 📡 Feed/RSS | 0개 | 비-알고리즘 구독 (SNS와 분리) |
| 💬 Channel/Community | 0개 | Discord / Slack / 카톡 오픈채팅 (1:1 메신저와 별도) |
| 🪪 Identity | 0개 | 신분증 / 자격증 / 멤버십 (Wallet과 분리) |
| 📞 Call | 0개 | 전화 / FaceTime / Zoom / Discord 음성 |
| ⋯ | ⋯ | (카테고리는 점진적으로 확장) |

### 보류 (후순위 검토)

`docs/category-brainstorm.md` 의 후보 중 위 표에 들어가지 않은 항목은 **보류** 상태로 둡니다. 채택하지 않은 것이 아니라, 채택 시점만 미루는 것입니다.

| 카테고리 | 보류 사유 (초기 메모) |
| --- | --- |
| 🎵 Music/Audio | watchOS에서 가치 크지만 시스템 NowPlaying 위젯과 영역 겹침 — 우회 설계 필요 |
| 📺 Video/Stream | 카드 1탭 = 외부앱 점프 외 통합 여지 적음 |
| 💻 Dev/Code | Auth/2FA · Files/Drive 와 사용 시점 겹침, 별도 모듈 가치 재검토 |
| 🎮 Game | 슈퍼앱 본체 동선과 결이 다름 |
| 🔗 Shortcut/Action | 카테고리라기보단 다른 모든 카테고리의 *실행 방식*에 가까움 — 모듈 대신 공통 메커니즘으로 흡수 검토 |

> 카테고리 자체를 비활성화할 수 있습니다. 안 쓰는 카테고리는 화면에서 사라집니다.

---

## 핵심 동작

1. **카테고리 선택** — 메신저인지 지갑인지 SNS인지 결정
2. **항목 추가** — 그 카테고리에서 실제로 쓰는 것을 하나씩 등록
3. **배치** — 자주 쓰는 순서로 직접 정렬 (자동 정렬 없음)
4. **실행** — 한 번의 탭 · 클릭 · 손목 회전으로 바로 열기

각 항목은 단순한 카드입니다. 카드 한 장 = 한 번의 동작.

---

## 디자인 원칙

- **빈 상태가 기본값** — 모든 카테고리가 항목 0개로 시작
- **사용자가 추가한 것만 존재** — 자동 발견/스캔 없음
- **카테고리 = 정적 모듈** — 카테고리는 앱 코드에 박혀있고, 항목만 사용자 데이터
- **3 플랫폼 동일 모델** — iOS/macOS/watchOS가 같은 데이터 구조 사용
- **로컬 우선** — 동기화는 iCloud Private DB 옵션으로만, 기본은 단말 로컬
- **점진적 확장** — 새 카테고리는 앱 업데이트로 추가 (사용자 경험은 항상 "비어있음에서 채우기")

---

## 상태

🚧 **Pre-alpha** — 빈 프로젝트. 구조 설계 단계.

| 단계 | 상태 |
| --- | --- |
| README · 컨셉 정의 | 🟢 작성 중 |
| 디렉토리 / 네이밍 / Bundle ID | 🟢 확정 (`app.run.needsingularity`) |
| 카테고리 구조 결정 | 🟢 정적 모듈 + 사용자 데이터 항목 |
| Xcode 멀티플랫폼 스캐폴딩 | ⚪ 다음 |
| 첫 카테고리 모듈 (Messenger) 구현 | ⚪ 이후 |

---

## 라이선스

미정.
