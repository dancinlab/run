#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Form: each entry is `@<type> <id> := "<subject>" :: <kind> [<grades>]`
#       optionally followed by body lines (2-space indent) — key=value,
#       edges (<- -> => …), or quoted prose.
#
# ENTRY TYPES (17):
#   Runtime (10): @S session  @U user  @A assistant  @T tool-call  @R result
#                 @H hook  @D decision  @K cost  @P provider  @? anomaly
#   Foundation:   @I identity-claim
#   Declarative:  @X external-citation  @F forbidden-pattern  @N note
#                 @C config  @L layout  @V spec-version
#
# EDGES (12, on body lines, 2-space indent):
#   Causal:     <- caused-by   -> triggers   == continues
#               ~> supersedes  !! aborts     |> verified-by
#   Effect:     => produces (followed by quoted natural-language)
#   Structural: <: specializes  :> generalizes  ?> soft-depends
#               !> conflicts-with  @> projects-to (e.g. @> AGENTS.md)
#
# GRADE TAGS (in [...] on entry header):
#   Delivery:   ok · err · denied · cancelled · partial · superseded
#   Governance: required · recommended · optional · draft · active · deprecated
#   Scoped:     allow:<x> · deny:<x>
#   Time/index: T<n> (turn)  N<n> (wall-sec)  d=<YYYY-MM-DD>
#
# PAYLOAD SYNTAX (body lines):
#   key = "value"           single-line string
#   key = [a, b, c]         array literal
#   key <<~EOF              heredoc (multi-line; ends with EOF on own line)
#     multi-line text
#   EOF
#   "see [@x1] §3"          inline citation by entry id
#   `cmd or path`           backtick code-span (inline only)
#
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

@X hexa_verify := "hexa verify — verification via hexa CLI only" :: guide [active]
  tldr = "Any correctness / purity / grade / identity claim → verify with `hexa <verb>` or `hexa run <verifier>.hexa` (e.g. `hexa run tool/atlas_verify.hexa`) and paste the verdict VERBATIM. NEVER cite sympy / PyPhi / Wolfram / Mathematica output as evidence."
  detail = "~/core/atlas/VERIFY.tape"

@X wilson_pool := "wilson pool — resource utilization" :: guide [active]
  tldr = "Heavy / deterministic work (build · drill · probe · compile · test-sweep · GPU fire) → do NOT serialize on localhost; route to the host pool: `wilson pool list` then `wilson pool on <host> <cmd>`, or a ToolUse `\"host\"` field. Empty roster = degrade-to-local, fine."
  detail = "~/core/atlas/POOL.tape"

# ─── identity ─────────────────────────────────────────────────────────

@I id001 := "run" :: project [active]
  emoji = "🏃‍♀"
  one_liner = "텅 비어있는 슈퍼앱 — 카테고리만 있고 내용은 사용자가 채운다"
  kind = "iOS / macOS / watchOS super-app shell (empty by default)"
  brief = "empty-canvas super-app · iOS/macOS/watchOS"
  parent = "dancinlab"
  platforms = ["iOS", "macOS", "watchOS"]
  bundle_id = "app.run.needsingularity"
  repo = "github.com/dancinlab/run"
  local_path = "~/core/run/"
  principle = "추천 없음 · 광고/트래커 없음 · 클라우드 계정 없음 · 추가하지 않은 것은 존재하지 않는다"

# ─── repo layout ──────────────────────────────────────────────────────

@L l1 := "repo layout" :: structure [active]
  Package_swift = "SwiftPM manifest"
  Sources_RunCore = "shared core (실행판 모델 · 동기화)"
  Sources_CategoryMessenger = "Messenger 카테고리 모듈"
  docs = "category-brainstorm.md (카테고리 설계 노트)"
  README_md = "human-facing intro (KO)"
  AGENTS_tape = "this file — agent context SSOT"
  CLAUDE_md = "symlink → AGENTS.tape"

# ─── governance ───────────────────────────────────────────────────────

@D g_inherit := "inherits dancinlab lattice policy" :: governance [active]
  -> "see [@x_lattice_policy] for the universal real-limits-first rule"
  => "this repo binds the same n=6-is-a-tool-not-constraint stance"

@D g1 := "real-limits-first" :: governance [active required]
  rule = "ceiling is set by real math/physics/UX limits — battery, screen, attention, app-review — not by lattice fit"
  |> "verification must cite a real platform limit (Apple guideline / battery budget / human attention)"

@D g2 := "lattice-is-tool" :: governance [active required]
  rule = "n=6 lattice (σ=12 τ=4 φ=2) used where it fits (e.g. watchOS 1–6 slot grid); never force-mapped onto category UX"
  !> "fit-to-convenient-number — never round category count to 6 just to match the lattice"

@D g3 := "honesty-obligation-external" :: governance [active required]
  rule = "if a category integration (e.g. KakaoTalk SDK constraint) limits us, name the external constraint honestly — do not blame internal design"

@D g4 := "commit-conventions" :: governance [active recommended]
  format = "<scope>: <one-line> — <why>"
  trailer = "Co-Authored-By: <agent> when AI-assisted"

@D g_arch_vs_log_split := "v1.2 architecture-vs-history split" :: governance [required d=2026-05-14 active]
  rule = "UPPERCASE.tape files are EDITABLE architecture (latest-wins per id). Append-only event history lives in UPPERCASE.log.tape siblings."
  why = "declarative entries (governance · config · layout · identity) evolve naturally; locking them as append-only via ~> supersedes creates noisy histories. The split lets architecture stay current and history stay immutable."
  applies-to = "AGENTS.tape · all UPPERCASE.tape root files"
  authority = "[@x_tape_spec] §Domain-tape sibling §Architecture-vs-history split"
  @> AGENTS.md


# ─── forbidden patterns ───────────────────────────────────────────────

@F f1 := "lattice-fit on external entity" :: anti-pattern [active deny]
  rule = "do not force an external app/SDK (KakaoTalk, Apple Pay, Telegram) into the n=6 lattice"
  rationale = "external entities have their own invariants; mapping ours onto theirs is dishonest"

# ─── external citations ───────────────────────────────────────────────

@X x_lattice_policy := "echoes/LATTICE_POLICY.md" :: doc [active]
  scope = "dancinlab-wide real-limits-first verification policy"
  origin = "Wave K, 2026-05-12"

@X x_tape_spec := "~/core/tape/spec/tape.md" :: doc [active]
  version = "1.2"
  repo = "github.com/dancinlab/tape"

# ─── history ──────────────────────────────────────────────────────────

@H h1 := "AGENTS.md replaced by AGENTS.tape" :: migration [active d=2026-05-14]
  ~> "prior empty AGENTS.md placeholder"
  => "single-source agent context now lives in this tape (.tape v1.2)"

@H h2 := "CLAUDE.md → AGENTS.tape symlink" :: migration [active d=2026-05-14]
  rule = "CLAUDE.md is a symlink so Claude Code reads the same tape"
