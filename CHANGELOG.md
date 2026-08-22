# Changelog

## v2.0.0 — 2026-08-22

A rebuild rather than a refresh. v1 was written in April 2026; four months on,
several of its load-bearing facts had inverted and its rubric carried a
systematic bias.

### Breaking

- **The verdict is now computed, not judged.** Six weighted components produce a
  0–100 score that maps to Strong / Promising / Weak / Flawed. The model may
  override by **one band only**, and must print `Override: X → Y — reason`.
  Unstated overrides are defects. See `references/scoring-rubric.md`.
- **8 AI-era checks → 12.** Three were reframed, four are new, one is a hard
  gate. Old check IDs no longer map. See `references/ai-era-checks.md`.
- **Capital paths added.** Every evaluation now selects Bootstrap, Venture, or
  Service-as-software first, and market-size, margin, payback and channel
  targets follow from it. v1 measured everything on an implicit venture
  yardstick, which scored healthy niche businesses as "Weak".
- **New required sections:** Score table, Steelman, Pre-Parade, Kill Criteria,
  What Would Change My Mind. Briefs missing any of these are incomplete.
- PDF template is v3 and is not placeholder-compatible with v2 briefs.

### Fixed

- **The template's own instruction block was rendering as visible text on page 1
  of every brief.** A nested `-->` inside the header comment closed it early.
  Present since v1.0.0.
- **The PDF command was macOS-only with no fallback**, despite `SKILL.md`
  promising a Chromium fallback. Replaced with `scripts/render-brief.sh`
  (Chrome → Chromium → Edge → Brave, filename dedupe, readable failure).
- **Chrome 151 writes the PDF and then never exits** when given a fresh
  `--user-data-dir`. The script now uses a watchdog and treats the PDF's
  existence, not the exit code, as success.
- `argument-hint` added — the actual Claude Code frontmatter field. The existing
  `args:` block was never read by the runtime.
- `allowed-tools` added for research tools, removing permission prompts
  mid-evaluation. Deliberately excludes Write and Bash.

### Corrected facts

- **Inference economics.** v1 claimed prices fall ~10× every 18–24 months and
  that this makes AI businesses healthier. Prices fell ~80% in twelve months,
  but consumption per task rose roughly 100× with reasoning and agentic loops —
  so cost *per outcome* is flat-to-rising. The check now measures the ratio.
- **The wrapper thesis.** v1 treated "wrapper" as a verdict. The evidence is
  bimodal: most thin wrappers died, and several of the largest AI businesses are
  technically wrappers. Check 1 now tests complement asymmetry instead.
- **Precedents refreshed.** Harvey re-dated; Character.AI reclassified as a
  *regulatory* precedent rather than a consolidation one; Builder.ai, Windsurf,
  Humane and the reverse-acquihire pattern added; current compounding businesses
  added with figures.

### Added

- `references/market-data.md` — every figure with a source and a `verified:` date
- `references/capital-paths.md`, `scoring-rubric.md`, `archetypes-2026.md`,
  `interview-bank.md`, `brief-production.md`
- `.living/` sidecar (living-skills 1.1) — 21-day refresh of perishable figures,
  with a monitoring list led by regulatory dates and precedent-company states
- `verdict.json` emitted alongside every brief
- Evaluation history in `~/.claude/business-idea-validator/history/` and a
  **compare mode** that diffs a re-evaluation, separating "the business moved"
  from "the market data moved"
- Artifact publishing as the preferred deliverable, ahead of PDF
- `evals/cases.md` — six regression cases, including one that must return
  different verdicts on different capital paths
- Six AI-cost rows in the unit-economics napkin, including cost per successful
  outcome and inference as a percentage of revenue

### Changed

- `SKILL.md` is smaller (15.9KB, from 18.2KB) while covering considerably more —
  the interview bank and brief mechanics moved into references
- **No market figure appears in `SKILL.md` prose.** All figures are quoted from
  `market-data.md` with their verified dates
- Regulatory dates must be re-verified by web search on every evaluation; the
  official EU AI Act timeline page has itself been stale for two years
- `install.sh` ships `scripts/`, `evals/` and `.living/`, and backs up any
  existing install

## v1.0.0 — 2026-04-17

Initial release. Dual-mode (nascent / operating), 8 AI-era checks, mandatory
pre-mortem, zero-trust verification of user claims, automatic styled PDF brief.
