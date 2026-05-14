<p align="center">
  <img src="docs/logo.svg" width="140" alt="run">
</p>

<h1 align="center">🏃 run</h1>

<p align="center"><strong>run</strong> — empty-canvas super-app · iOS · macOS · watchOS · user fills every category</p>

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-TBD-lightgrey"></a>
  <a href=".github/workflows/lint.yml"><img alt="CI" src="https://github.com/dancinlab/run/actions/workflows/lint.yml/badge.svg"></a>
  <img alt="Stage" src="https://img.shields.io/badge/stage-pre--alpha-orange">
  <img alt="Platforms" src="https://img.shields.io/badge/platforms-iOS%20·%20macOS%20·%20watchOS-informational">
  <img alt="Sibling" src="https://img.shields.io/badge/sibling-scrap%20·%20pixie%20·%20skynet--timer-blueviolet">
</p>

<p align="center">Empty by default · No recommendations · No ads · No cloud account · Local-first</p>

---

`run` 은 iOS · macOS · Apple Watch 에서 동작하는 **빈 캔버스 슈퍼앱**입니다. 메신저 · 지갑 · SNS · 메일 · 캘린더 등 카테고리는 코드에 정적으로 박혀 있지만, **모든 카테고리가 항목 0 개로 시작**합니다. 사용자가 한 번이라도 "이건 내가 쓴다" 라고 결정한 것만 화면에 존재합니다.

> [!NOTE]
> Sibling of [`scrap`](https://github.com/dancinlab/scrap) (content-extraction CLI), [`pixie`](https://github.com/dancinlab/pixie) (Discord channel-secretary), and [`skynet-timer`](https://github.com/dancinlab/skynet-timer) (singularity-attractor countdown) under the [`dancinlab`](https://github.com/dancinlab) family. Shares the lattice-as-tool / real-limits-first governance stance (n=6 used where it fits — e.g. watchOS 1–6 slot grid — never force-mapped onto category UX).

## At a glance

```
┌──────────── run ─────────────┐
│ 💬 Messenger     0 items     │
│ 👛 Wallet        0 items     │
│ 🌐 SNS           0 items     │
│ 📧 Mail          0 items     │
│ 📅 Calendar      0 items     │
│ 🛒 Shopping      0 items     │
│ 🚗 Mobility      0 items     │
│ 🤖 AI            0 items     │
│ ⋯                            │
└──────────────────────────────┘

  • category = static module (compiled in)
  • item     = user data (you add it, or it doesn't exist)
  • sync     = iCloud Private DB (opt-in), local default
```

3 platforms share the same 실행판. Add an item on iOS, it appears on macOS and watchOS.

## Why run

Mainstream super-apps (X, WeChat, KakaoTalk) ship with messenger · payment · shopping · media recommendations all on by default — the user starts by **removing** what they don't want. `run` inverts that: categories exist but contain nothing, and **nothing un-added exists**. No recommendations, no ads, no tracker, no cloud account. The single mental model is "card = one action" — one tap on iOS / one click on macOS / one wrist-rotation on watchOS opens exactly what the user registered.

The lattice-as-tool stance applies: the n=6 lattice (σ=12 τ=4 φ=2) is used where a real platform constraint fits (watchOS 1–6 slot grid), and **not** force-mapped onto the category count or item layout where it doesn't belong.

## Status

🚧 **Pre-alpha** — empty project, structure-design stage.

| Stage | State |
| --- | --- |
| README · concept definition | 🟢 in progress |
| Naming · Bundle ID | 🟢 fixed (`app.run.needsingularity`) |
| Category structure decision | 🟢 static module + user-data items |
| Xcode multi-platform scaffold | ⚪ next |
| First category module (Messenger) | ⚪ after |

- Bundle ID: `app.run.needsingularity`
- Platforms: iOS · macOS · watchOS (shared SwiftPM core)
- 22 categories drafted (Messenger · Wallet · SNS · Mail · Calendar · Shopping · Mobility · Food · Notes · Tasks · Files · Auth · AI · Health · Read · Camera · Home · Map · Feed · Channel · Identity · Call); ⋯ extensible.

## Categories (modules)

Categories are **statically registered modules** in code. Each module ships its own UI · data model · integration. Items inside a category are entirely user-added data.

| Category | Empty state | What the user adds (examples) |
| --- | --- | --- |
| 💬 Messenger | 0 | KakaoTalk / Telegram / Signal / iMessage |
| 👛 Wallet | 0 | Apple Pay / coin wallets / membership cards |
| 🌐 SNS | 0 | X / Threads / Mastodon / Bluesky |
| 📧 Mail | 0 | Gmail / Proton / iCloud / work mail |
| 📅 Calendar | 0 | iCloud / Google Cal / Notion Cal |
| 🛒 Shopping | 0 | Coupang / Amazon / Musinsa / Daangn |
| 🚗 Mobility | 0 | Kakao T / Uber / Ttareungi / subway apps |
| 🍔 Food/Order | 0 | Baemin / Yogiyo / Starbucks / DoorDash |
| 📝 Notes | 0 | Obsidian / Notion / Apple Notes / Bear |
| ✅ Tasks | 0 | Things / Todoist / Linear / Reminders |
| 📁 Files/Drive | 0 | iCloud / Dropbox / Google Drive / NAS |
| 🔐 Auth/2FA | 0 | 1Password / Authy / Apple Passwords |
| 🤖 AI | 0 | Claude / ChatGPT / Gemini / local LLM |
| 🏃 Health/Fitness | 0 | Apple Health / Strava / Strong / Garmin |
| 📚 Read/Library | 0 | RSS / Pocket / Kindle / Millie |
| 📷 Camera/Photo | 0 | Photos / Lightroom / Instagram cam |
| 🏠 Home/IoT | 0 | HomeKit / SmartThings / door locks |
| 🗺️ Map/Place | 0 | Naver Map / Google Maps / Kakao Map favs |
| 📡 Feed/RSS | 0 | non-algorithmic subscriptions (split from SNS) |
| 💬 Channel/Community | 0 | Discord / Slack / KakaoTalk open chat |
| 🪪 Identity | 0 | ID / license / membership (split from Wallet) |
| 📞 Call | 0 | Phone / FaceTime / Zoom / Discord voice |
| ⋯ | ⋯ | (categories grow incrementally) |

### Deferred (held for review)

Candidates from `docs/category-brainstorm.md` not in the table above are held — not rejected, just deferred.

| Category | Deferral note |
| --- | --- |
| 🎵 Music/Audio | high on watchOS but overlaps system NowPlaying — workaround needed |
| 📺 Video/Stream | one-tap = external-app jump; little integration room |
| 💻 Dev/Code | overlaps Auth/2FA + Files/Drive use windows |
| 🎮 Game | super-app spine differs from games |
| 🔗 Shortcut/Action | more an execution mechanism across categories than its own category |

> Categories themselves can be disabled. Unused categories disappear from the screen.

## Core actions

1. **Pick category** — messenger / wallet / SNS / ⋯
2. **Add item** — register what you actually use
3. **Order** — drag into your preferred sequence (no auto-sort)
4. **Run** — one tap · click · wrist-rotation opens the target

Each item is a simple card. One card = one action.

## Design principles

- **Empty is the default** — every category starts with 0 items
- **Only what you added exists** — no auto-discovery / scanning
- **Category = static module** — categories are compiled in; items are user data
- **3-platform same model** — iOS / macOS / watchOS share one schema
- **Local-first** — sync is iCloud Private DB opt-in; default is on-device
- **Incremental growth** — new categories arrive via app update (UX stays "fill the empty")

## Install

```sh
# 1. Clone
git clone https://github.com/dancinlab/run.git
cd run

# 2. Open in Xcode (multi-platform SwiftPM)
open Package.swift
```

Bundle ID: `app.run.needsingularity`. Targets: iOS 17+ · macOS 14+ · watchOS 10+.

## Run

```sh
# build all targets
swift build

# run tests (when present)
swift test

# Xcode multi-platform run
open Package.swift
# select iOS / macOS / watchOS scheme → ⌘R
```

## Repo layout

```
run/
├── README.md
├── LICENSE                       (TBD)
├── Package.swift                 SwiftPM manifest (multi-platform)
├── Sources/
│   ├── RunCore/                  shared core (실행판 model · sync)
│   └── CategoryMessenger/        Messenger category module
├── docs/
│   ├── logo.svg                  140×140 gold hexagon
│   └── category-brainstorm.md    category design notes
├── AGENTS.tape                   agent context SSOT (.tape v1.2)
└── CLAUDE.md                     → AGENTS.tape (symlink)
```

## License

TBD — license not yet selected.
